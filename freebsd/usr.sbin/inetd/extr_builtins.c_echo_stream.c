
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servtab {int se_service; } ;
typedef int buffer ;


 int BUFSIZE ;
 int exit (int ) ;
 int inetd_setproctitle (int ,int) ;
 int read (int,char*,int) ;
 scalar_t__ write (int,char*,int) ;

__attribute__((used)) static void
echo_stream(int s, struct servtab *sep)
{
 char buffer[BUFSIZE];
 int i;

 inetd_setproctitle(sep->se_service, s);
 while ((i = read(s, buffer, sizeof(buffer))) > 0 &&
     write(s, buffer, i) > 0)
  ;
 exit(0);
}
