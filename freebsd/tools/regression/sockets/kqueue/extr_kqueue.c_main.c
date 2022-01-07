
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int F_SETFL ;
 int OK (char*) ;
 int O_NONBLOCK ;
 int PF_UNIX ;
 int SOCK_DGRAM ;
 int SOCK_STREAM ;
 int close (int) ;
 int errno ;
 int fail (int ,char*,char*,char*) ;
 scalar_t__ fcntl (int,int ,int ) ;
 int kqueue () ;
 int printf (char*) ;
 int socketpair (int ,int ,int ,int*) ;
 int test_evfilt_read (int,int*,char*) ;
 int test_evfilt_write (int,int*,char*) ;

int
main(void)
{
 int kq, sv[2];

 printf("1..49\n");

 kq = kqueue();
 if (kq == -1)
  fail(errno, "kqueue", ((void*)0), ((void*)0));
 OK("kqueue()");





 if (socketpair(PF_UNIX, SOCK_DGRAM, 0, sv) == -1)
  fail(errno, "socketpair", "PF_UNIX, SOCK_DGRAM", ((void*)0));
 OK("socketpair() 1");

 if (fcntl(sv[0], F_SETFL, O_NONBLOCK) != 0)
  fail(errno, "fcntl", "PF_UNIX, SOCK_DGRAM", "O_NONBLOCK");
 OK("fcntl() 1");
 if (fcntl(sv[1], F_SETFL, O_NONBLOCK) != 0)
  fail(errno, "fcntl", "PF_UNIX, SOCK_DGRAM", "O_NONBLOCK");
 OK("fnctl() 2");

 test_evfilt_read(kq, sv, "PF_UNIX, SOCK_DGRAM");

 if (close(sv[0]) == -1)
  fail(errno, "close", "PF_UNIX/SOCK_DGRAM", "sv[0]");
 OK("close() 1");
 if (close(sv[1]) == -1)
  fail(errno, "close", "PF_UNIX/SOCK_DGRAM", "sv[1]");
 OK("close() 2");
 if (socketpair(PF_UNIX, SOCK_STREAM, 0, sv) == -1)
  fail(errno, "socketpair", "PF_UNIX, SOCK_STREAM", ((void*)0));
 OK("socketpair() 2");

 if (fcntl(sv[0], F_SETFL, O_NONBLOCK) != 0)
  fail(errno, "fcntl", "PF_UNIX, SOCK_STREAM", "O_NONBLOCK");
 OK("fcntl() 3");
 if (fcntl(sv[1], F_SETFL, O_NONBLOCK) != 0)
  fail(errno, "fcntl", "PF_UNIX, SOCK_STREAM", "O_NONBLOCK");
 OK("fcntl() 4");

 test_evfilt_read(kq, sv, "PF_UNIX, SOCK_STREAM");

 if (close(sv[0]) == -1)
  fail(errno, "close", "PF_UNIX/SOCK_STREAM", "sv[0]");
 OK("close() 3");
 if (close(sv[1]) == -1)
  fail(errno, "close", "PF_UNIX/SOCK_STREAM", "sv[1]");
 OK("close() 4");





 if (socketpair(PF_UNIX, SOCK_STREAM, 0, sv) == -1)
  fail(errno, "socketpair", "PF_UNIX, SOCK_STREAM", ((void*)0));
 OK("socketpair() 3");

 if (fcntl(sv[0], F_SETFL, O_NONBLOCK) != 0)
  fail(errno, "fcntl", "PF_UNIX, SOCK_STREAM", "O_NONBLOCK");
 OK("fcntl() 5");
 if (fcntl(sv[1], F_SETFL, O_NONBLOCK) != 0)
  fail(errno, "fcntl", "PF_UNIX, SOCK_STREAM", "O_NONBLOCK");
 OK("fcntl() 6");

 test_evfilt_write(kq, sv, "PF_UNIX, SOCK_STREAM");

 if (close(sv[0]) == -1)
  fail(errno, "close", "PF_UNIX/SOCK_STREAM", "sv[0]");
 OK("close() 5");
 if (close(sv[1]) == -1)
  fail(errno, "close", "PF_UNIX/SOCK_STREAM", "sv[1]");
 OK("close() 6");

 if (close(kq) == -1)
  fail(errno, "close", "kq", ((void*)0));
 OK("close() 7");

 return (0);
}
