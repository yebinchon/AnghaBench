
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AC ;
 scalar_t__ FD ;
 int SIGKILL ;
 int TIOCCDTR ;
 int TIOCNXCL ;
 scalar_t__ child ;
 int close (scalar_t__) ;
 int ioctl (scalar_t__,int ,int *) ;
 int kill (scalar_t__,int ) ;
 int printf (char*,int) ;
 int sleep (int) ;

void
v831_abort(void)
{



        sleep(2);
        if (child > 0)
                kill(child, SIGKILL);
        if (FD > 0)
                ioctl(FD, TIOCNXCL, ((void*)0));
        close(AC);
        if (FD > 0)
                ioctl(FD, TIOCCDTR, 0);
        close(FD);
}
