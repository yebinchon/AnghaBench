
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int pid_t ;


 int AF_INET ;
 int INADDR_LOOPBACK ;
 int PF_INET ;
 int SHUT_RDWR ;
 int SIGTERM ;
 int SOCK_STREAM ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 int errno ;
 int kill (int ,int ) ;
 int ntohl (int ) ;
 scalar_t__ shutdown (int,int ) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
tcp_client(pid_t partner, u_short port, int secs)
{
 struct sockaddr_in sin;
 int error, sock;

 sleep(1);

 sock = socket(PF_INET, SOCK_STREAM, 0);
 if (sock < 0) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "socket");
 }

 bzero(&sin, sizeof(sin));
 sin.sin_family = AF_INET;
 sin.sin_len = sizeof(sin);
 sin.sin_addr.s_addr = ntohl(INADDR_LOOPBACK);
 sin.sin_port = port;

 if (connect(sock, (struct sockaddr *)&sin, sizeof(sin)) < 0) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "connect");
 }

 if (shutdown(sock, SHUT_RDWR) < 0) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "shutdown");
 }

 sleep(secs);
 close(sock);
}
