
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ssize_t ;
typedef int ch ;


 scalar_t__ EPIPE ;
 int err (int,char*,char const*) ;
 scalar_t__ errno ;
 int errx (int,char*,char const*,scalar_t__) ;
 scalar_t__ write (int,char*,int) ;

__attribute__((used)) static void
test_write(const char *testname, int sock)
{
 ssize_t len;
 char ch;

 ch = 0;
 len = write(sock, &ch, sizeof(ch));
 if (len < 0) {
  if (errno == EPIPE)
   return;
  err(-1, "%s: write", testname);
 }
 errx(-1, "%s: write: returned %zd", testname, len);
}
