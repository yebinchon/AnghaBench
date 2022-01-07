
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {int dummy; } ;
typedef int fd_set ;


 int FD_ISSET (int,int *) ;
 int FD_SETSIZE ;
 int FIFONAME ;
 scalar_t__ FT_FIFO ;
 int O_NONBLOCK ;
 int O_RDONLY ;
 int SETUP (int,int ,struct timeval) ;
 int SIGUSR1 ;
 int close (int) ;
 int err (int,char*) ;
 int errx (int,char*,int) ;
 int exit (int ) ;
 scalar_t__ filetype ;
 int kill (int ,int ) ;
 int open (int ,int) ;
 int ppid ;
 int read (int,char*,int) ;
 int report (int ,char*,int,int ) ;
 scalar_t__ select (int,int *,int *,int *,struct timeval*) ;
 int state ;
 int usleep (int) ;

__attribute__((used)) static void
child(int fd, int num)
{
 fd_set rfds;
 struct timeval tv;
 int fd1, fd2;
 char buf[256];

 if (filetype == FT_FIFO) {
  fd = open(FIFONAME, O_RDONLY | O_NONBLOCK);
  if (fd < 0)
   err(1, "open for read");
 }
 if (fd >= FD_SETSIZE)
  errx(1, "fd = %d too large for select()", fd);

 if (filetype == FT_FIFO) {
  SETUP(fd, rfds, tv);
  if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
   err(1, "select");
  report(num++, "0", 1, FD_ISSET(fd, &rfds));
 }
 kill(ppid, SIGUSR1);

 usleep(1);
 while (state != 1)
  ;
 if (filetype != FT_FIFO) {





  state = 4;
  goto state4;
 }
 SETUP(fd, rfds, tv);
 if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
  err(1, "select");
 report(num++, "1", 0, FD_ISSET(fd, &rfds));
 kill(ppid, SIGUSR1);

 usleep(1);
 while (state != 2)
  ;
 SETUP(fd, rfds, tv);
 if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
  err(1, "select");
 report(num++, "2", 1, FD_ISSET(fd, &rfds));
 if (read(fd, buf, sizeof buf) != 1)
  err(1, "read");
 SETUP(fd, rfds, tv);
 if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
  err(1, "select");
 report(num++, "2a", 0, FD_ISSET(fd, &rfds));
 kill(ppid, SIGUSR1);

 usleep(1);
 while (state != 3)
  ;
 SETUP(fd, rfds, tv);
 if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
  err(1, "select");
 report(num++, "3", 1, FD_ISSET(fd, &rfds));
 kill(ppid, SIGUSR1);







 usleep(1);
 while (state != 4)
  ;
state4:
 SETUP(fd, rfds, tv);
 if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
  err(1, "select");
 report(num++, "4", 0, FD_ISSET(fd, &rfds));
 kill(ppid, SIGUSR1);

 usleep(1);
 while (state != 5)
  ;
 SETUP(fd, rfds, tv);
 if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
  err(1, "select");
 report(num++, "5", 1, FD_ISSET(fd, &rfds));
 kill(ppid, SIGUSR1);

 usleep(1);
 while (state != 6)
  ;





 SETUP(fd, rfds, tv);
 if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
  err(1, "select");
 report(num++, "6", 1, FD_ISSET(fd, &rfds));
 if (read(fd, buf, sizeof buf) != 1)
  err(1, "read");
 SETUP(fd, rfds, tv);
 if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
  err(1, "select");
 report(num++, "6a", 1, FD_ISSET(fd, &rfds));
 if (filetype == FT_FIFO) {
  fd2 = open(FIFONAME, O_RDONLY | O_NONBLOCK);
  if (fd2 < 0)
   err(1, "open for read");
  fd1 = fd;
  fd = fd2;
  SETUP(fd, rfds, tv);
  if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
   err(1, "select");
  report(num++, "6b", 1, FD_ISSET(fd, &rfds));
  fd = fd1;
  SETUP(fd, rfds, tv);
  if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
   err(1, "select");
  report(num++, "6c", 1, FD_ISSET(fd, &rfds));
  close(fd2);
  SETUP(fd, rfds, tv);
  if (select(fd + 1, &rfds, ((void*)0), ((void*)0), &tv) < 0)
   err(1, "select");
  report(num++, "6d", 1, FD_ISSET(fd, &rfds));
 }
 close(fd);
 kill(ppid, SIGUSR1);

 exit(0);
}
