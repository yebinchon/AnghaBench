
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_short ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; int sin_port; TYPE_1__ sin_addr; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int ssize_t ;
typedef int socklen_t ;
typedef int sin_local ;
typedef int sin ;
typedef int pid_t ;
typedef int ch ;


 int AF_INET ;
 int EPIPE ;
 int INADDR_LOOPBACK ;
 int MSG_NOSIGNAL ;
 int PF_INET ;
 int SIGTERM ;
 int SOCK_STREAM ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int err (int,char*) ;
 int errno ;
 int errx (int,char*) ;
 scalar_t__ getsockname (int,struct sockaddr*,int*) ;
 int kill (int ,int ) ;
 int ntohl (int ) ;
 int send (int,char*,int,int ) ;
 int sleep (int) ;
 int socket (int ,int ,int ) ;
 scalar_t__ tcp_drop (struct sockaddr_in*,struct sockaddr_in*) ;

__attribute__((used)) static void
tcp_client(pid_t partner, u_short port)
{
 struct sockaddr_in sin, sin_local;
 int error, sock;
 socklen_t slen;
 ssize_t len;
 char ch;

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

 slen = sizeof(sin_local);
 if (getsockname(sock, (struct sockaddr *)&sin_local, &slen) < 0) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "getsockname");
 }






 ch = 'A';
 len = send(sock, &ch, sizeof(ch), MSG_NOSIGNAL);
 if (len < 0) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "tcp_client: send (1)");
 }
 if (len != sizeof(ch)) {
  (void)kill(partner, SIGTERM);
  errx(-1, "tcp_client: send (1) len");
 }

 sleep(5);
 if (tcp_drop(&sin_local, &sin) < 0) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "tcp_client: tcp_drop");
 }
 sleep(5);

 ch = 'A';
 len = send(sock, &ch, sizeof(ch), MSG_NOSIGNAL);
 if (len >= 0) {
  (void)kill(partner, SIGTERM);
  errx(-1, "tcp_client: send (2): success");
 } else if (errno != EPIPE) {
  error = errno;
  (void)kill(partner, SIGTERM);
  errno = error;
  err(-1, "tcp_client: send (2)");
 }
 close(sock);
}
