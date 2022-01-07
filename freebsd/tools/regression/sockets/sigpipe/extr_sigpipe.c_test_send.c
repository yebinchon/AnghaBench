
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
 scalar_t__ send (int,char*,int,int ) ;

__attribute__((used)) static void
test_send(const char *testname, int sock)
{
 ssize_t len;
 char ch;

 ch = 0;
 len = send(sock, &ch, sizeof(ch), 0);
 if (len < 0) {
  if (errno == EPIPE)
   return;
  err(-1, "%s: send", testname);
 }
 errx(-1, "%s: send: returned %zd", testname, len);
}
