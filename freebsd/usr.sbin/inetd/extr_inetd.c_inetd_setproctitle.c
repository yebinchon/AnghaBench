
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_storage {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef int ss ;
typedef int socklen_t ;
typedef int pbuf ;


 int NI_MAXHOST ;
 int NI_NUMERICHOST ;
 int getnameinfo (struct sockaddr*,int,char*,int,int *,int ,int ) ;
 scalar_t__ getpeername (int,struct sockaddr*,int*) ;
 int setproctitle (char*,char*) ;
 int sprintf (char*,char*,char const*,...) ;

void
inetd_setproctitle(const char *a, int s)
{
 socklen_t size;
 struct sockaddr_storage ss;
 char buf[80], pbuf[NI_MAXHOST];

 size = sizeof(ss);
 if (getpeername(s, (struct sockaddr *)&ss, &size) == 0) {
  getnameinfo((struct sockaddr *)&ss, size, pbuf, sizeof(pbuf),
       ((void*)0), 0, NI_NUMERICHOST);
  (void) sprintf(buf, "%s [%s]", a, pbuf);
 } else
  (void) sprintf(buf, "%s", a);
 setproctitle("%s", buf);
}
