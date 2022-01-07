
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SIGCONT ;
 int SIGTSTP ;
 void SIG_DFL (int) ;
 int errno ;
 int gettty (int *) ;
 int kill (int ,int) ;
 int settty (int *) ;
 int signal (int,void (*) (int)) ;
 int ttyedit ;
 int ttysaved ;

void
tstpcont(int sig)
{
 int save_errno = errno;

 if (sig == SIGTSTP) {
  signal(SIGCONT, tstpcont);
  gettty(&ttyedit);
  settty(&ttysaved);
 } else {
  signal(SIGTSTP, tstpcont);
  settty(&ttyedit);
 }
 signal(sig, SIG_DFL);
 kill(0, sig);
 errno = save_errno;
}
