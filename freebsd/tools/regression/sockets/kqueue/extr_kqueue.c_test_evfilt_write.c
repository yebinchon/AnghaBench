
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct kevent {int dummy; } ;
typedef int ssize_t ;
typedef int ch ;


 scalar_t__ EAGAIN ;
 scalar_t__ ENOBUFS ;
 int EVFILT_WRITE ;
 int EV_ADD ;
 int EV_DELETE ;
 int EV_SET (struct kevent*,int,int ,int ,int ,int ,int *) ;
 int OK (char*) ;
 scalar_t__ errno ;
 int fail (scalar_t__,char*,char const*,char*) ;
 int fail_assertion (char*,char const*,char*,char*) ;
 int kevent (int,struct kevent*,int,struct kevent*,int,struct timespec*) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
test_evfilt_write(int kq, int fd[2], const char *socktype)
{
 struct timespec ts;
 struct kevent ke;
 ssize_t len;
 char ch;
 int i;

 EV_SET(&ke, fd[0], EVFILT_WRITE, EV_ADD, 0, 0, ((void*)0));
 if (kevent(kq, &ke, 1, ((void*)0), 0, ((void*)0)) == -1)
  fail(errno, "kevent", socktype, "EVFILT_WRITE, EV_ADD");
 OK("EVFILE_WRITE, EV_ADD");




 ts.tv_sec = 0;
 ts.tv_nsec = 0;
 i = kevent(kq, ((void*)0), 0, &ke, 1, &ts);
 if (i == -1)
  fail(errno, "kevent", socktype, "EVFILT_WRITE");
 OK("EVFILE_WRITE");
 if (i != 1)
  fail_assertion("kevent", socktype, "EVFILT_WRITE",
      "empty socket unwritable");
 OK("empty socket unwritable");




 ch = 'a';
 while ((len = write(fd[0], &ch, sizeof(ch))) == sizeof(ch)) {};
 if (len == -1 && errno != EAGAIN && errno != ENOBUFS)
  fail(errno, "write", socktype, ((void*)0));
 OK("write");
 if (len != -1 && len != sizeof(ch))
  fail_assertion("write", socktype, ((void*)0), "write length");
 OK("write length");




 ts.tv_sec = 0;
 ts.tv_nsec = 0;
 i = kevent(kq, ((void*)0), 0, &ke, 1, &ts);
 if (i == -1)
  fail(errno, "kevent", socktype, "EVFILT_WRITE");
 OK("EVFILT_WRITE");
 if (i != 0)
  fail_assertion("kevent", socktype, "EVFILT_WRITE",
      "full socket writable");
 OK("full socket writable");

 EV_SET(&ke, fd[0], EVFILT_WRITE, EV_DELETE, 0, 0, ((void*)0));
 if (kevent(kq, &ke, 1, ((void*)0), 0, ((void*)0)) == -1)
  fail(errno, "kevent", socktype, "EVFILT_WRITE, EV_DELETE");
 OK("EVFILT_WRITE, EV_DELETE");
}
