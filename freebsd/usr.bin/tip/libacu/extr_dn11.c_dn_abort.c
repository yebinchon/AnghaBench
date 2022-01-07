
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ FD ;
 int SIGKILL ;
 int TIOCCDTR ;
 scalar_t__ child ;
 int close (scalar_t__) ;
 scalar_t__ dn ;
 int ioctl (scalar_t__,int ,int ) ;
 int kill (scalar_t__,int ) ;
 int sleep (int) ;

void
dn_abort(void)
{
 sleep(2);
 if (child > 0)
  kill(child, SIGKILL);
 if (dn > 0)
  close(dn);
 if (FD > 0)
  ioctl(FD, TIOCCDTR, 0);
 close(FD);
}
