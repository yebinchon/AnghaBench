
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ EPROTOTYPE ;
 int PF_ROUTE ;
 int SOCK_DGRAM ;
 int SOCK_RAW ;
 int SOCK_STREAM ;
 int close (int) ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*,...) ;
 int socket (int ,int ,int ) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;

int
main(void)
{
 int sock, socks[2];

 sock = socket(PF_ROUTE, SOCK_STREAM, 0);
 if (sock >= 0) {
  close(sock);
  errx(-1, "socket(PF_ROUTE, SOCK_STREAM, 0) returned %d",
      sock);
 }

 if (errno != EPROTOTYPE)
  err(-1, "socket(PF_ROUTE, SOCK_STREAM, 0)");

 sock = socket(PF_ROUTE, SOCK_DGRAM, 0);
 if (sock >= 0) {
  close(sock);
  errx(-1, "socket(PF_ROUTE, SOCK_DGRAM, 0) returned %d",
      sock);
 }

 if (errno != EPROTOTYPE)
  err(-1, "socket(PF_ROUTE, SOCK_DGRAM, 0)");

 sock = socket(PF_ROUTE, SOCK_RAW, 0);
 if (sock < 0)
  err(-1, "socket(PF_ROUTE, SOCK_RAW, 0)");
 close(sock);

 if (socketpair(PF_ROUTE, SOCK_STREAM, 0, socks) == 0) {
  close(socks[0]);
  close(socks[1]);
  errx(-1,
      "socketpair(PF_ROUTE, SOCK_STREAM, 0, socks) success");
 }

 if (errno != EPROTOTYPE)
  err(-1, "socketpair(PF_ROUTE, SOCK_STREAM, 0, socks)");

 if (socketpair(PF_ROUTE, SOCK_DGRAM, 0, socks) == 0) {
  close(socks[0]);
  close(socks[1]);
  errx(-1,
      "socketpair(PF_ROUTE, SOCK_DGRAM, 0, socks) success");
 }

 if (errno != EPROTOTYPE)
  err(-1, "socketpair(PF_ROUTE, SOCK_DGRAM, 0, socks)");

 if (socketpair(PF_ROUTE, SOCK_RAW, 0, socks) == 0) {
  close(socks[0]);
  close(socks[1]);
  errx(-1,
      "socketpair(PF_ROUTE, SOCK_STREAM, 0, socks) success");
 }

 return (0);
}
