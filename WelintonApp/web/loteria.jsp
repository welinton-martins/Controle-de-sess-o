<%-- 
    Document   : loteria.jsp
    Created on : Apr 25, 2022, 1:38:26 PM
    Author     : WelintonJesus
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Dicas para loteria - WelintonApp</title>
    </head>
    <body>
        <%@include file="WEB-INF/jspf/header.jspf" %>
        <h2>Dicas para loteria</h2>
        <%if(session.getAttribute("username")!=null){%>
            <table border='1'>
                <tr><th>Índice</th><th>Número</th></tr>
                <%for(int i=1; i<=6; i++){%>
                    <tr>
                    <td><%=i%></td>
                    <td name="name<%=i%>">
                    <%=((int)(Math.random()*100))%>
                    </td>
                    </tr>
                <%}%>
            </table>
            <form>
                <input type="submit" name="session-form" value="Salvar"/>
            </form>
        <%}else{%>
            <p style="color: red">Voce nao tem permissao para ver esta pagina</p>
        <%}%>
    </body>
</html>
