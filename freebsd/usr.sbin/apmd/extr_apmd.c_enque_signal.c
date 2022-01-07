
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int err (int,char*) ;
 int * signal_fd ;
 int write (int ,int*,int) ;

void
enque_signal(int sig)
{
 if (write(signal_fd[1], &sig, sizeof sig) != sizeof sig)
  err(1, "cannot process signal.");
}
