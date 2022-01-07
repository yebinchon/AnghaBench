
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
struct pollfd {int fd; int events; int revents; } ;


 int AF_INET ;
 int F_GETFL ;
 int F_SETFL ;
 int INADDR_LOOPBACK ;
 int O_NONBLOCK ;
 int POLLOUT ;
 int SIGALRM ;
 int SOCK_STREAM ;
 int SOL_SOCKET ;
 int SO_REUSEADDR ;
 int accept (int,int ,int ) ;
 int alarm (int) ;
 int bind (int,struct sockaddr*,int) ;
 int close (int) ;
 int connect (int,struct sockaddr*,int) ;
 int do_alrm ;
 int fcntl (int,int ,...) ;
 int htonl (int ) ;
 int htons (int) ;
 int listen (int,int) ;
 int memset (struct sockaddr_in*,int ,int) ;
 scalar_t__ poll (struct pollfd*,int,int) ;
 int printf (char*) ;
 int setsockopt (int,int ,int ,int*,int) ;
 int signal (int ,int ) ;
 int socket (int ,int ,int ) ;
 int write (int,char*,int) ;

int
main(void)
{
 int o, s, t, u, do_t, do_u;
 struct pollfd pfd[2];
 struct sockaddr_in sa;
 char buf[4096];

 printf("1..1\n");
 signal(SIGALRM, do_alrm);
 alarm(20);

 s = socket(AF_INET, SOCK_STREAM, 0);
 if (s == -1)
  return 1;
 o = 1;
 setsockopt(s, SOL_SOCKET, SO_REUSEADDR, &o, sizeof o);
 memset(&sa, 0, sizeof sa);
 sa.sin_family = AF_INET;
 sa.sin_addr.s_addr = htonl(INADDR_LOOPBACK);
 sa.sin_port = htons(3737);
 if (bind(s, (struct sockaddr *) &sa, sizeof sa) == -1)
  return 1;
 if (listen(s, 1) == -1)
  return 1;
 t = socket(AF_INET, SOCK_STREAM, 0);
 if (t == -1)
  return 1;
 if (connect(t, (struct sockaddr *) &sa, sizeof sa) == -1)
  return 1;
 u = accept(s, 0, 0);
 if (u == -1)
  return 1;
 close(s);
 fcntl(t, F_SETFL, fcntl(t, F_GETFL) | O_NONBLOCK);
 fcntl(u, F_SETFL, fcntl(t, F_GETFL) | O_NONBLOCK);
 do_t = 1;
 do_u = 1;
 pfd[0].fd = t;
 pfd[0].events = POLLOUT;
 pfd[1].fd = u;
 pfd[1].events = POLLOUT;
 while (do_t || do_u) {
  if (poll(pfd, 2, 1000) == 0) {
   if (do_t) {
    close(t);
    pfd[0].fd = -1;
    do_t = 0;
   }
   continue;
  }
  if (pfd[0].revents & POLLOUT) {
   if (write(t, buf, sizeof buf) == -1) {
    close(t);
    pfd[0].fd = -1;
    do_t = 0;
   }
  }
  if (pfd[1].revents & POLLOUT) {
   if (write(u, buf, sizeof buf) == -1) {
    close(u);
    pfd[1].fd = -1;
    do_u = 0;
   }
  }
 }

 printf("ok 1 - tcpfullwindowrst\n");
 return 0;
}
