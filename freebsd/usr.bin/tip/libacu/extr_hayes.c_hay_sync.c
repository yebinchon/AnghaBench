
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DUMBUFLEN ;
 int FD ;
 int FIONREAD ;
 int MAXRETRY ;
 int TIOCCDTR ;
 int TIOCSDTR ;
 char* dumbuf ;
 int ioctl (int ,int ,int*) ;
 int min (int,int ) ;
 int printf (char*,...) ;
 int read (int ,char*,int ) ;
 int sleep (int) ;
 scalar_t__ strchr (char*,char) ;
 int write (int ,char*,int) ;

__attribute__((used)) static int
hay_sync(void)
{
 int len, retry = 0;

 while (retry++ <= MAXRETRY) {
  write(FD, "AT\r", 3);
  sleep(1);
  ioctl(FD, FIONREAD, &len);
  if (len) {
   len = read(FD, dumbuf, min(len, DUMBUFLEN));
   if (strchr(dumbuf, '0') ||
      (strchr(dumbuf, 'O') && strchr(dumbuf, 'K')))
    return(1);




  }
  ioctl(FD, TIOCCDTR, 0);
  ioctl(FD, TIOCSDTR, 0);
 }
 printf("Cannot synchronize with hayes...\n\r");
 return(0);
}
