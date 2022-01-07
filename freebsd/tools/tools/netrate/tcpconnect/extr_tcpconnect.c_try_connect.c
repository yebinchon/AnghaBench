
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int sin_addr; } ;
struct sockaddr {int dummy; } ;
struct fd_set {int dummy; } ;


 scalar_t__ EINPROGRESS ;
 scalar_t__ EINTR ;
 int FD_SET (int,struct fd_set*) ;
 int FD_ZERO (struct fd_set*) ;
 int FIONBIO ;
 int F_SETFL ;
 int PF_INET ;
 int SOCK_STREAM ;
 int close (int) ;
 scalar_t__ connect (int,struct sockaddr*,int) ;
 int err (int,char*,...) ;
 scalar_t__ errno ;
 scalar_t__ fcntl (int,int ,int ,int*) ;
 int inet_ntoa (int ) ;
 scalar_t__ select (int,struct fd_set*,struct fd_set*,struct fd_set*,int *) ;
 int socket (int ,int ,int ) ;
 int timer_fired ;

__attribute__((used)) static int
try_connect(struct sockaddr_in *sin)
{
 struct
 fd_set read_set;
 int i, s;

 s = socket(PF_INET, SOCK_STREAM, 0);
 if (s < 0)
  err(-1, "socket(PF_INET, SOCK_STREAM)");

 i = 1;
 if (fcntl(s, F_SETFL, FIONBIO, &i) < 0)
  err(-1, "fcntl(s, FIOBIO, 1)");

 FD_ZERO(&read_set);
 FD_SET(s, &read_set);

 if (connect(s, (struct sockaddr *)sin, sizeof(*sin)) < 0 &&
     errno != EINPROGRESS)
  err(-1, "connect(%s)", inet_ntoa(sin->sin_addr));

 if (select(s + 1, &read_set, &read_set, &read_set, ((void*)0)) < 0) {
  if ((errno == EINTR && !timer_fired) || (errno != EINTR))
   err(-1, "select");
  return (-1);
 }

 close(s);
 return (0);
}
