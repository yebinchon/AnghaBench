
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rt_msghdr {int dummy; } ;


 int EX_OSERR ;
 int PF_ROUTE ;
 int SOCK_RAW ;
 int err (int ,char*) ;
 int print_rtmsg (struct rt_msghdr*,int) ;
 int read (int,char*,int) ;
 int socket (int ,int ,int ) ;

int
main(int argc, char *argv[])
{
 int n, s;
 char msg[2048];

 s = socket(PF_ROUTE, SOCK_RAW, 0);
 if (s < 0)
  err(EX_OSERR, "socket");
 for(;;) {
  n = read(s, msg, 2048);
  print_rtmsg((struct rt_msghdr *)msg, n);
 }
 return 0;
}
