
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cfjail {int flags; scalar_t__* comparam; scalar_t__ pstatus; int * comline; } ;


 scalar_t__ IP_STOP_TIMEOUT ;
 int JF_FROM_RUNQ ;
 int JF_SLEEPQ ;
 int JF_TIMEOUT ;
 int TAILQ_EMPTY (int *) ;
 struct cfjail* TAILQ_FIRST (int *) ;
 scalar_t__ WIFSIGNALED (scalar_t__) ;
 int WTERMSIG (scalar_t__) ;
 int failed (struct cfjail*) ;
 int free (int *) ;
 int jail_note (struct cfjail*,char*) ;
 int jail_warnx (struct cfjail*,char*,int *,...) ;
 int paralimit ;
 int ready ;
 int requeue (struct cfjail*,int *) ;
 int runnable ;
 scalar_t__ verbose ;

int
finish_command(struct cfjail *j)
{
 struct cfjail *rj;
 int error;

 if (!(j->flags & JF_SLEEPQ))
  return 0;
 j->flags &= ~JF_SLEEPQ;
 if (*j->comparam == IP_STOP_TIMEOUT) {
  j->flags &= ~JF_TIMEOUT;
  j->pstatus = 0;
  return 0;
 }
 paralimit++;
 if (!TAILQ_EMPTY(&runnable)) {
  rj = TAILQ_FIRST(&runnable);
  rj->flags |= JF_FROM_RUNQ;
  requeue(rj, &ready);
 }
 error = 0;
 if (j->flags & JF_TIMEOUT) {
  j->flags &= ~JF_TIMEOUT;
  if (*j->comparam != IP_STOP_TIMEOUT) {
   jail_warnx(j, "%s: timed out", j->comline);
   failed(j);
   error = -1;
  } else if (verbose > 0)
   jail_note(j, "timed out\n");
 } else if (j->pstatus != 0) {
  if (WIFSIGNALED(j->pstatus))
   jail_warnx(j, "%s: exited on signal %d",
       j->comline, WTERMSIG(j->pstatus));
  else
   jail_warnx(j, "%s: failed", j->comline);
  j->pstatus = 0;
  failed(j);
  error = -1;
 }
 free(j->comline);
 j->comline = ((void*)0);
 return error;
}
