
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PF_LOCAL ;
 int SOCK_STREAM ;
 int err (int,char*) ;
 int fprintf (int ,char*) ;
 scalar_t__ socketpair (int ,int ,int ,int*) ;
 int stderr ;
 long strtol (char*,char**,int) ;
 int tcp_pair (long,int*) ;
 int tcp_setup (long) ;
 int tcp_teardown () ;
 int test_send_dontsignal (char*,int,int) ;
 int test_send_wantsignal (char*,int,int) ;
 int test_write_dontsignal (char*,int,int) ;
 int test_write_wantsignal (char*,int,int) ;
 int usage () ;
 int warnx (char*) ;

int
main(int argc, char *argv[])
{
 char *dummy;
 int sock[2];
 long port;

 if (argc != 2)
  usage();

 port = strtol(argv[1], &dummy, 10);
 if (port < 0 || port > 65535 || *dummy != '\0')
  usage();


 warnx("sigpipe: SO_NOSIGPIPE not defined, skipping some tests");





 if (socketpair(PF_LOCAL, SOCK_STREAM, 0, sock) < 0)
  err(-1, "socketpair(PF_LOCAL, SOCK_STREAM)");
 test_send_wantsignal("test_send_wantsignal(PF_LOCAL)", sock[0],
     sock[1]);
 if (socketpair(PF_LOCAL, SOCK_STREAM, 0, sock) < 0)
  err(-1, "socketpair(PF_LOCAL, SOCK_STREAM)");
 test_write_wantsignal("test_write_wantsignal(PF_LOCAL)", sock[0],
     sock[1]);
 tcp_setup(port);
 tcp_pair(port, sock);
 test_send_wantsignal("test_send_wantsignal(PF_INET)", sock[0],
     sock[1]);







 tcp_pair(port, sock);
 test_write_wantsignal("test_write_wantsignal(PF_INET)", sock[0],
     sock[1]);






 tcp_teardown();

 fprintf(stderr, "PASS\n");
 return (0);
}
