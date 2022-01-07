
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TIOCSETD ;
 int daemon_uid () ;
 int exit (int ) ;
 int ioctl (int ,int ,scalar_t__*) ;
 int kill (scalar_t__,int) ;
 scalar_t__ odisc ;
 scalar_t__ tipout_pid ;
 int unraw () ;
 int uu_unlock (int ) ;
 int uucplock ;
 int wait (int *) ;

void
cleanup(int signo)
{
 daemon_uid();
 (void)uu_unlock(uucplock);
 if (odisc)
  ioctl(0, TIOCSETD, &odisc);
 unraw();
 if (signo && tipout_pid) {
  kill(tipout_pid, signo);
  wait(((void*)0));
 }
 exit(0);
}
