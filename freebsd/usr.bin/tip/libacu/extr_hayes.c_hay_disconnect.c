
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FD ;
 int TIOCCDTR ;
 int TIOCSDTR ;
 int goodbye () ;
 int ioctl (int ,int ,int ) ;
 int printf (char*) ;
 int sleep (int) ;

void
hay_disconnect(void)
{




 ioctl(FD, TIOCCDTR, 0);
 sleep(1);
 ioctl(FD, TIOCSDTR, 0);
 goodbye();
}
