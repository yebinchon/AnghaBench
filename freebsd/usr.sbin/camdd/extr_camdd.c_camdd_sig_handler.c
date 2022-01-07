
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGINFO ;
 int camdd_sem ;
 int error_exit ;
 int need_exit ;
 int need_status ;
 int sem_post (int *) ;

void
camdd_sig_handler(int sig)
{
 if (sig == SIGINFO)
  need_status = 1;
 else {
  need_exit = 1;
  error_exit = 1;
 }

 sem_post(&camdd_sem);
}
