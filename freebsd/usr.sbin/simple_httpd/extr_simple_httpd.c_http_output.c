
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int con_sock ;
 int strlen (char const*) ;
 int write (int ,char const*,int) ;

__attribute__((used)) static void
http_output(const char *html)
{
 write(con_sock, html, strlen(html));
 write(con_sock, "\r\n", 2);
}
