
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pr {scalar_t__ ostdout; scalar_t__ kq; TYPE_1__* e; } ;
struct TYPE_2__ {int data; } ;


 scalar_t__ STDOUT_FILENO ;
 scalar_t__ WEXITSTATUS (int) ;
 scalar_t__ WIFEXITED (int) ;
 scalar_t__ WIFSIGNALED (int) ;
 int WTERMSIG (int) ;
 int close (scalar_t__) ;
 int dup2 (scalar_t__,scalar_t__) ;
 int err (int,char*) ;
 int errx (int,char*,...) ;
 int fflush (int ) ;
 int free (struct pr*) ;
 int kevent (scalar_t__,int *,int ,TYPE_1__*,int,int *) ;
 int stdout ;

void
stop_pr(struct pr *pr)
{
 int wstatus;

 if (pr == ((void*)0))
  return;

 fflush(stdout);
 if (pr->ostdout != STDOUT_FILENO) {
  close(STDOUT_FILENO);
  dup2(pr->ostdout, STDOUT_FILENO);
  close(pr->ostdout);
 }
 if (kevent(pr->kq, ((void*)0), 0, pr->e, 1, ((void*)0)) == -1)
  err(2, "kevent");
 wstatus = pr->e[0].data;
 close(pr->kq);
 free(pr);
 if (WIFEXITED(wstatus) && WEXITSTATUS(wstatus) != 0)
  errx(2, "pr exited abnormally");
 else if (WIFSIGNALED(wstatus))
  errx(2, "pr killed by signal %d",
      WTERMSIG(wstatus));
}
