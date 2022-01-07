
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int TIOCCDTR ;
 int TIOCSDTR ;
 int close (int ) ;
 int coursync () ;
 int ioctl (int ,int ,int ) ;
 int sleep (int) ;

void
cour_disconnect(void)
{

 ioctl(FD, TIOCCDTR, 0);
 sleep(1);
 ioctl(FD, TIOCSDTR, 0);
 coursync();
 close(FD);
}
