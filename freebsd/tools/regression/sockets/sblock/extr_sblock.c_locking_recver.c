
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int ch ;


 scalar_t__ EINTR ;
 int err (int,char*) ;
 scalar_t__ errno ;
 int errx (int,char*) ;
 int exit (int ) ;
 int fprintf (int ,char*) ;
 int interrupted ;
 scalar_t__ recv (int,char*,int,int ) ;
 scalar_t__ sleep (int) ;
 int stderr ;

__attribute__((used)) static void
locking_recver(int fd)
{
 ssize_t len;
 char ch;

 if (sleep(1) != 0)
  err(-1, "FAIL: locking_recver: sleep");
 len = recv(fd, &ch, sizeof(ch), 0);
 if (len < 0 && errno != EINTR)
  err(-1, "FAIL: locking_recver: recv");
 if (len < 0 && errno == EINTR) {
  fprintf(stderr, "PASS\n");
  exit(0);
 }
 if (len == 0)
  errx(-1, "FAIL: locking_recver: recv: eof");
 if (!interrupted)
  errx(-1, "FAIL: locking_recver: not interrupted");
}
