
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int ch ;


 int err (int,char*) ;
 int errx (int,char*,...) ;
 scalar_t__ interrupted ;
 int recv (int,char*,int,int ) ;

__attribute__((used)) static void
blocking_recver(int fd)
{
 ssize_t len;
 char ch;

 len = recv(fd, &ch, sizeof(ch), 0);
 if (len < 0)
  err(-1, "FAIL: blocking_recver: recv");
 if (len == 0)
  errx(-1, "FAIL: blocking_recver: recv: eof");
 if (len != 1)
  errx(-1, "FAIL: blocking_recver: recv: %zd bytes", len);
 if (interrupted)
  errx(-1, "FAIL: blocking_recver: interrupted wrong pid");
}
