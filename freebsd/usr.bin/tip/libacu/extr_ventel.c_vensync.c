
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int caddr_t ;


 int FD ;
 int FIONREAD ;
 int MAXRETRY ;
 int TIOCCDTR ;
 int TIOCSDTR ;
 int delay (int,int) ;
 scalar_t__ ioctl (int,int ,int ) ;
 scalar_t__ min (int,int) ;
 int perror (char*) ;
 int read (int,char*,scalar_t__) ;
 int sleep (int) ;
 int write (int,char*,int) ;

__attribute__((used)) static int
vensync(int fd)
{
 int already = 0, nread;
 char buf[60];
 ioctl(FD, TIOCCDTR, 0);
 sleep(1);
 ioctl(FD, TIOCSDTR, 0);
 while (already < MAXRETRY) {





  write(fd, "\r", 1);
  delay(1,10);
  write(fd, "\r", 1);
  sleep(2);
  if (ioctl(fd, FIONREAD, (caddr_t)&nread) < 0) {
   perror("tip: ioctl");
   continue;
  }
  while (nread > 0) {
   read(fd, buf, min(nread, 60));
   if ((buf[nread - 1] & 0177) == '$')
    return (1);
   nread -= min(nread, 60);
  }
  sleep(1);
  already++;
 }
 return (0);
}
