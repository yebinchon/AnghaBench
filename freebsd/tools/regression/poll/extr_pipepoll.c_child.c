
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pollfd {int fd; int events; int revents; } ;


 int FIFONAME ;
 scalar_t__ FT_FIFO ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int POLLHUP ;
 int POLLIN ;
 int SIGUSR1 ;
 int close (int) ;
 int err (int,char*) ;
 int exit (int ) ;
 scalar_t__ filetype ;
 int kill (int ,int ) ;
 int open (int ,int) ;
 int poll (struct pollfd*,int,int ) ;
 int ppid ;
 int read (int,char*,int) ;
 int report (int ,char*,int,int ,int,int) ;
 int state ;
 int usleep (int) ;

__attribute__((used)) static void
child(int fd, int num)
{
 struct pollfd pfd;
 int fd2, res;
 char buf[256];

 if (filetype == FT_FIFO) {
  fd = open(FIFONAME, O_RDONLY | O_NONBLOCK);
  if (fd < 0)
   err(1, "open for read");
 }
 pfd.fd = fd;
 pfd.events = POLLIN;

 if (filetype == FT_FIFO) {
  if ((res = poll(&pfd, 1, 0)) < 0)
   err(1, "poll");
  report(num++, "0", 0, pfd.revents, res, 0);
 }
 kill(ppid, SIGUSR1);

 usleep(1);
 while (state != 1)
  ;
 if (filetype != FT_FIFO) {





  state = 4;
  goto state4;
 }
 if ((res = poll(&pfd, 1, 0)) < 0)
  err(1, "poll");
 report(num++, "1", 0, pfd.revents, res, 0);
 kill(ppid, SIGUSR1);

 usleep(1);
 while (state != 2)
  ;
 if ((res = poll(&pfd, 1, 0)) < 0)
  err(1, "poll");
 report(num++, "2", POLLIN, pfd.revents, res, 1);
 if (read(fd, buf, sizeof buf) != 1)
  err(1, "read");
 if ((res = poll(&pfd, 1, 0)) < 0)
  err(1, "poll");
 report(num++, "2a", 0, pfd.revents, res, 0);
 kill(ppid, SIGUSR1);

 usleep(1);
 while (state != 3)
  ;
 if ((res = poll(&pfd, 1, 0)) < 0)
  err(1, "poll");
 report(num++, "3", POLLHUP, pfd.revents, res, 1);
 kill(ppid, SIGUSR1);







 usleep(1);
 while (state != 4)
  ;
state4:
 if ((res = poll(&pfd, 1, 0)) < 0)
  err(1, "poll");
 report(num++, "4", 0, pfd.revents, res, 0);
 kill(ppid, SIGUSR1);

 usleep(1);
 while (state != 5)
  ;
 if ((res = poll(&pfd, 1, 0)) < 0)
  err(1, "poll");
 report(num++, "5", POLLIN, pfd.revents, res, 1);
 kill(ppid, SIGUSR1);

 usleep(1);
 while (state != 6)
  ;
 if ((res = poll(&pfd, 1, 0)) < 0)
  err(1, "poll");
 report(num++, "6", POLLIN | POLLHUP, pfd.revents, res, 1);
 if (read(fd, buf, sizeof buf) != 1)
  err(1, "read");
 if ((res = poll(&pfd, 1, 0)) < 0)
  err(1, "poll");
 report(num++, "6a", POLLHUP, pfd.revents, res, 1);
 if (filetype == FT_FIFO) {




  fd2 = open(FIFONAME, O_RDONLY | O_NONBLOCK);
  if (fd2 < 0)
   err(1, "open for read");
  pfd.fd = fd2;
  if ((res = poll(&pfd, 1, 0)) < 0)
   err(1, "poll");
  report(num++, "6b", POLLHUP, pfd.revents, res, 1);
  pfd.fd = fd;
  if ((res = poll(&pfd, 1, 0)) < 0)
   err(1, "poll");
  report(num++, "6c", POLLHUP, pfd.revents, res, 1);
  close(fd2);
  if ((res = poll(&pfd, 1, 0)) < 0)
   err(1, "poll");
  report(num++, "6d", POLLHUP, pfd.revents, res, 1);
 }
 close(fd);
 kill(ppid, SIGUSR1);

 exit(0);
}
