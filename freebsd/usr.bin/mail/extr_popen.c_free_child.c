
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child {int free; scalar_t__ done; } ;
typedef int sigset_t ;
typedef int pid_t ;


 int SIGCHLD ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 int delchild (struct child*) ;
 struct child* findchild (int ,int ) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;

void
free_child(pid_t pid)
{
 struct child *cp;
 sigset_t nset, oset;

 (void)sigemptyset(&nset);
 (void)sigaddset(&nset, SIGCHLD);
 (void)sigprocmask(SIG_BLOCK, &nset, &oset);
 if ((cp = findchild(pid, 0)) != ((void*)0)) {
  if (cp->done)
   delchild(cp);
  else
   cp->free = 1;
 }
 (void)sigprocmask(SIG_SETMASK, &oset, ((void*)0));
}
