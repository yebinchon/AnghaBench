
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct kevent {int dummy; } ;
typedef int ssize_t ;
typedef int ch ;


 int EVFILT_READ ;
 int EV_ADD ;
 int EV_DELETE ;
 int EV_SET (struct kevent*,int,int ,int ,int ,int ,int *) ;
 int OK (char*) ;
 int errno ;
 int fail (int ,char*,char const*,char*) ;
 int fail_assertion (char*,char const*,char*,char*) ;
 int kevent (int,struct kevent*,int,struct kevent*,int,struct timespec*) ;
 int read (int,char*,int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
test_evfilt_read(int kq, int fd[2], const char *socktype)
{
 struct timespec ts;
 struct kevent ke;
 ssize_t len;
 char ch;
 int i;

 EV_SET(&ke, fd[0], EVFILT_READ, EV_ADD, 0, 0, ((void*)0));
 if (kevent(kq, &ke, 1, ((void*)0), 0, ((void*)0)) == -1)
  fail(errno, "kevent", socktype, "EVFILT_READ, EV_ADD");
 OK("EVFILT_READ, EV_ADD");




 ts.tv_sec = 0;
 ts.tv_nsec = 0;
 i = kevent(kq, ((void*)0), 0, &ke, 1, &ts);
 if (i == -1)
  fail(errno, "kevent", socktype, "EVFILT_READ");
 OK("EVFILT_READ");
 if (i != 0)
  fail_assertion("kevent", socktype, "EVFILT_READ",
      "empty socket unreadable");
 OK("empty socket unreadable");




 ch = 'a';
 len = write(fd[1], &ch, sizeof(ch));
 if (len == -1)
  fail(errno, "write", socktype, ((void*)0));
 OK("write one byte");
 if (len != sizeof(ch))
  fail_assertion("write", socktype, ((void*)0), "write length");
 OK("write one byte length");




 ts.tv_sec = 0;
 ts.tv_nsec = 0;
 i = kevent(kq, ((void*)0), 0, &ke, 1, &ts);
 if (i == -1)
  fail(errno, "kevent", socktype, "EVFILT_READ");
 OK("EVFILT_READ");
 if (i != 1)
  fail_assertion("kevent", socktype, "EVFILT_READ",
      "non-empty socket unreadable");
 OK("non-empty socket unreadable");




 len = read(fd[0], &ch, sizeof(ch));
 if (len == -1)
  fail(errno, "read", socktype, ((void*)0));
 OK("read one byte");
 if (len != sizeof(ch))
  fail_assertion("read", socktype, ((void*)0), "read length");
 OK("read one byte length");




 ts.tv_sec = 0;
 ts.tv_nsec = 0;
 i = kevent(kq, ((void*)0), 0, &ke, 1, &ts);
 if (i == -1)
  fail(errno, "kevent", socktype, "EVFILT_READ");
 OK("EVFILT_READ");
 if (i != 0)
  fail_assertion("kevent", socktype, "EVFILT_READ",
      "empty socket unreadable");
 OK("empty socket unreadable");

 EV_SET(&ke, fd[0], EVFILT_READ, EV_DELETE, 0, 0, ((void*)0));
 if (kevent(kq, &ke, 1, ((void*)0), 0, ((void*)0)) == -1)
  fail(errno, "kevent", socktype, "EVFILT_READ, EV_DELETE");
 OK("EVFILT_READ, EV_DELETE");
}
