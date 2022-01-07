
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int socklen_t ;
typedef int sin_local ;
typedef int sin ;
typedef int pid_t ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int SIGKILL ;
 int SOCK_STREAM ;
 int TCP_PORT ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 int errno ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int htons (int ) ;
 int kill (int ,int ) ;
 int ntohl (int ) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ tcp_drop (struct sockaddr_in*,struct sockaddr_in*) ;

__attribute__((used)) static void
tcp_client(pid_t partner, int dropflag)
{
 struct sockaddr_in sin, sin_local;
 int error, sock;
 socklen_t slen;

 sleep(1);

 sock = socket(PF_INET, SOCK_STREAM, 0);
 if (sock < 0) {
  error = errno;
  (void)kill(partner, SIGKILL);
  errno = error;
  err(-1, "socket");
 }

 bzero(&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_addr.s_addr = ntohl(INADDR_LOOPBACK);
 sin.sin_port = htons(TCP_PORT);

 if (connect(sock, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
  error = errno;
  (void)kill(partner, SIGKILL);
  errno = error;
  err(-1, "connect");
 }

 slen = sizeof(sin_local);
 if (getsockname(sock, (struct sockaddr *)&sin_local, &slen) < 0) {
  error = errno;
  (void)kill(partner, SIGKILL);
  errno = error;
  err(-1, "getsockname");
 }

 if (dropflag) {
  if (tcp_drop(&sin_local, &sin) < 0) {
   error = errno;
   (void)kill(partner, SIGKILL);
   errno = error;
   err(-1, "tcp_drop");
  }
  sleep(2);
 }
 close(sock);
}
