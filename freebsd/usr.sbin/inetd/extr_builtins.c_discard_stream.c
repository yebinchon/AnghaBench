
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct servtab {int se_service; } ;
typedef int buffer ;


 int BUFSIZE ;
 scalar_t__ EINTR ;
 scalar_t__ errno ;
 int exit (int ) ;
 int inetd_setproctitle (int ,int) ;
 int read (int,char*,int) ;

__attribute__((used)) static void
discard_stream(int s, struct servtab *sep)
{
 int ret;
 char buffer[BUFSIZE];

 inetd_setproctitle(sep->se_service, s);
 while (1) {
  while ((ret = read(s, buffer, sizeof(buffer))) > 0)
   ;
  if (ret == 0 || errno != EINTR)
   break;
 }
 exit(0);
}
