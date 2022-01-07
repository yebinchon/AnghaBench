
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FD ;
 int TIOCCDTR ;
 int close (scalar_t__) ;
 int ioctl (scalar_t__,int ,int ) ;
 int sleep (int) ;

void
dn_disconnect(void)
{
 sleep(2);
 if (FD > 0)
  ioctl(FD, TIOCCDTR, 0);
 close(FD);
}
