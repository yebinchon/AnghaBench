
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uintmax_t ;
typedef int u_int64_t ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
typedef int sin ;


 int AF_INET ;
 int PORT ;
 int SECONDS ;
 int SIGALRM ;
 scalar_t__ SIG_ERR ;
 int alarm (int) ;
 int alarm_handler ;
 int bzero (struct sockaddr_in*,int) ;
 int err (int,char*) ;
 int errx (int,char*) ;
 int htons (int ) ;
 int inet_addr (char*) ;
 int printf (char*,int ) ;
 scalar_t__ signal (int ,int ) ;
 int timer_fired ;
 scalar_t__ try_connect (struct sockaddr_in*) ;

int
main(int argc, char *argv[])
{
 struct sockaddr_in sin;
 u_int64_t counter;

 if (argc != 2)
  errx(-1, "usage: tcpconnect [ip]");

 bzero(&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_addr.s_addr = inet_addr(argv[1]);
 sin.sin_port = htons(PORT);

 if (signal(SIGALRM, alarm_handler) == SIG_ERR)
  err(-1, "signal(SIGALRM)");

 alarm(SECONDS);

 counter = 0;
 while (!timer_fired) {
  if (try_connect(&sin) == 0)
   counter++;
 }
 printf("%ju count\n", (uintmax_t)counter);
 printf("%ju connections/second\n", (uintmax_t)(counter / SECONDS));

 return (0);
}
