
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int tv_sec; scalar_t__ tv_usec; } ;
struct TYPE_2__ {int s_addr; } ;
struct sockaddr_in {int sin_len; TYPE_1__ sin_addr; int sin_port; int sin_family; } ;
struct sockaddr {int dummy; } ;
typedef int sin ;
typedef int fd_set ;


 int AF_INET ;
 scalar_t__ EINPROGRESS ;
 scalar_t__ FD_ISSET (int,int *) ;
 int FD_SET (int,int *) ;
 int FD_ZERO (int *) ;
 int F_SETFL ;
 int INADDR_LOOPBACK ;
 int O_NONBLOCK ;
 int PF_INET ;
 int PORT1 ;
 int SOCK_STREAM ;
 int accept (int,int *,int *) ;
 scalar_t__ bind (int,struct sockaddr*,int) ;
 int bzero (struct sockaddr_in*,int) ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int err (int,char*,char const*,...) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*) ;
 scalar_t__ fcntl (int,int ,int ) ;
 int htonl (int ) ;
 int htons (int) ;
 int inet_ntoa (TYPE_1__) ;
 scalar_t__ listen (int,int) ;
 int select (int,int *,int *,int *,struct timeval*) ;
 scalar_t__ sleep (int) ;
 int socket (int ,int ,int ) ;

__attribute__((used)) static void
setup_tcp(const char *test, int *fdp, int port)
{
 fd_set writefds, exceptfds;
 struct sockaddr_in sin;
 int ret, sock1, sock2, sock3;
 struct timeval tv;

 bzero(&sin, sizeof(sin));
 sin.sin_len = sizeof(sin);
 sin.sin_family = AF_INET;
 sin.sin_addr.s_addr = htonl(INADDR_LOOPBACK);




 sin.sin_port = htons(port);
 sock1 = socket(PF_INET, SOCK_STREAM, 0);
 if (sock1 < 0)
  err(1, "%s: setup_tcp: socket", test);
 if (bind(sock1, (struct sockaddr *)&sin, sizeof(sin)) < 0)
  err(1, "%s: bind(%s, %d)", test, inet_ntoa(sin.sin_addr),
      PORT1);
 if (listen(sock1, -1) < 0)
  err(1, "%s: listen", test);





 sock2 = socket(PF_INET, SOCK_STREAM, 0);
 if (sock2 < 0)
  err(1, "%s: setup_tcp: socket", test);
 if (fcntl(sock2, F_SETFL, O_NONBLOCK) < 0)
  err(1, "%s: setup_tcp: fcntl(O_NONBLOCK)", test);
 if (connect(sock2, (struct sockaddr *)&sin, sizeof(sin)) < 0 &&
     errno != EINPROGRESS)
  err(1, "%s: setup_tcp: connect(%s, %d)", test,
      inet_ntoa(sin.sin_addr), PORT1);





 if (sleep(1) != 0)
  err(1, "%s: sleep(1)", test);
 sock3 = accept(sock1, ((void*)0), ((void*)0));
 if (sock3 < 0)
  err(1, "%s: accept", test);
 if (sleep(1) != 0)
  err(1, "%s: sleep(1)", test);

 FD_ZERO(&writefds);
 FD_SET(sock2, &writefds);
 FD_ZERO(&exceptfds);
 FD_SET(sock2, &exceptfds);
 tv.tv_sec = 1;
 tv.tv_usec = 0;
 ret = select(sock2 + 1, ((void*)0), &writefds, &exceptfds, &tv);
 if (ret < 0)
  err(1, "%s: setup_tcp: select", test);
 if (FD_ISSET(sock2, &exceptfds))
  errx(1, "%s: setup_tcp: select: exception", test);
 if (!FD_ISSET(sock2, &writefds))
  errx(1, "%s: setup_tcp: select: not writable", test);

 close(sock1);
 fdp[0] = sock2;
 fdp[1] = sock3;
}
