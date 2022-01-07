
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int TIOCCDTR ;
 int TIOCSDTR ;
 int close (int ) ;
 int ioctl (int ,int ,int ) ;
 int sleep (int) ;
 int t3000_sync () ;

void
t3000_disconnect(void)
{

 ioctl(FD, TIOCCDTR, 0);
 sleep(1);
 ioctl(FD, TIOCSDTR, 0);
 t3000_sync();
 close(FD);
}
