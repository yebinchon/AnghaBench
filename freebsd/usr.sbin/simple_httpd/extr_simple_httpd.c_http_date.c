
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;


 int con_sock ;
 int gmtime (int *) ;
 int strftime (char*,int,char*,int ) ;
 int strlen (char*) ;
 int time (int *) ;
 int write (int ,char*,int ) ;

__attribute__((used)) static void
http_date(void)
{
 time_t tl;
 char buff[50];

 tl = time(((void*)0));
 strftime(buff, 50, "Date: %a, %d %h %Y %H:%M:%S %Z\r\n", gmtime(&tl));
 write(con_sock, buff, strlen(buff));

}
