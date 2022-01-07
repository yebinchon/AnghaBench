
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FIFONAME ;
 scalar_t__ FT_FIFO ;
 int O_NONBLOCK ;
 int O_WRONLY ;
 int SIGUSR1 ;
 scalar_t__ close (int) ;
 int cpid ;
 int err (int,char*) ;
 scalar_t__ filetype ;
 int kill (int ,int ) ;
 int open (int ,int) ;
 int state ;
 int usleep (int) ;
 int write (int,char*,int) ;

__attribute__((used)) static void
parent(int fd)
{
 usleep(1);
 while (state != 1)
  ;
 if (filetype == FT_FIFO) {
  fd = open(FIFONAME, O_WRONLY | O_NONBLOCK);
  if (fd < 0)
   err(1, "open for write");
 }
 kill(cpid, SIGUSR1);

 usleep(1);
 while (state != 2)
  ;
 if (write(fd, "", 1) != 1)
  err(1, "write");
 kill(cpid, SIGUSR1);

 usleep(1);
 while (state != 3)
  ;
 if (close(fd) != 0)
  err(1, "close for write");
 kill(cpid, SIGUSR1);

 usleep(1);
 while (state != 4)
  ;
 if (filetype != FT_FIFO)
  return;
 fd = open(FIFONAME, O_WRONLY | O_NONBLOCK);
 if (fd < 0)
  err(1, "open for write");
 kill(cpid, SIGUSR1);

 usleep(1);
 while (state != 5)
  ;
 if (write(fd, "", 1) != 1)
  err(1, "write");
 kill(cpid, SIGUSR1);

 usleep(1);
 while (state != 6)
  ;
 if (close(fd) != 0)
  err(1, "close for write");
 kill(cpid, SIGUSR1);

 usleep(1);
 while (state != 7)
  ;
}
