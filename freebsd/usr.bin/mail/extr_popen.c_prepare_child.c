
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int sigset_t ;


 int NSIG ;
 int SIGINT ;
 int SIG_DFL ;
 int SIG_IGN ;
 int SIG_SETMASK ;
 int dup2 (int,int) ;
 int sigemptyset (int *) ;
 scalar_t__ sigismember (int *,int) ;
 int signal (int,int ) ;
 int sigprocmask (int ,int *,int *) ;

void
prepare_child(sigset_t *nset, int infd, int outfd)
{
 int i;
 sigset_t eset;





 if (infd >= 0)
  dup2(infd, 0);
 if (outfd >= 0)
  dup2(outfd, 1);
 for (i = 1; i < NSIG; i++)
  if (nset != ((void*)0) && sigismember(nset, i))
   (void)signal(i, SIG_IGN);
 if (nset == ((void*)0) || !sigismember(nset, SIGINT))
  (void)signal(SIGINT, SIG_DFL);
 (void)sigemptyset(&eset);
 (void)sigprocmask(SIG_SETMASK, &eset, ((void*)0));
}
