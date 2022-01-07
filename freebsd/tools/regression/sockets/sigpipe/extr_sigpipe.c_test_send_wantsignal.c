
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SHUT_WR ;
 int close (int) ;
 int err (int,char*,char const*) ;
 int errx (int,char*,char const*) ;
 int got_signal () ;
 scalar_t__ shutdown (int,int ) ;
 int signal_setup (char const*) ;
 int test_send (char const*,int) ;

__attribute__((used)) static void
test_send_wantsignal(const char *testname, int sock1, int sock2)
{

 if (shutdown(sock2, SHUT_WR) < 0)
  err(-1, "%s: shutdown", testname);
 signal_setup(testname);
 test_send(testname, sock2);
 if (!got_signal())
  errx(-1, "%s: send: didn't receive SIGPIPE", testname);
 close(sock1);
 close(sock2);
}
