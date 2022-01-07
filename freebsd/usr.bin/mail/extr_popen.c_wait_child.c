
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct child {int status; int done; } ;
typedef int sigset_t ;
typedef int pid_t ;


 int SIGCHLD ;
 int SIG_BLOCK ;
 int SIG_SETMASK ;
 scalar_t__ WEXITSTATUS (int ) ;
 scalar_t__ WIFEXITED (int ) ;
 int delchild (struct child*) ;
 struct child* findchild (int,int) ;
 int sigaddset (int *,int ) ;
 int sigemptyset (int *) ;
 int sigprocmask (int ,int *,int *) ;
 int wait_status ;
 int waitpid (int,int *,int ) ;

int
wait_child(pid_t pid)
{
 struct child *cp;
 sigset_t nset, oset;
 pid_t rv = 0;

 (void)sigemptyset(&nset);
 (void)sigaddset(&nset, SIGCHLD);
 (void)sigprocmask(SIG_BLOCK, &nset, &oset);





 cp = findchild(pid, 1);
 if (cp == ((void*)0) || !cp->done)
  rv = waitpid(pid, &wait_status, 0);
 else
  wait_status = cp->status;
 if (cp != ((void*)0))
  delchild(cp);
 (void)sigprocmask(SIG_SETMASK, &oset, ((void*)0));
 if (rv == -1 || (WIFEXITED(wait_status) && WEXITSTATUS(wait_status)))
  return -1;
 else
  return 0;
}
