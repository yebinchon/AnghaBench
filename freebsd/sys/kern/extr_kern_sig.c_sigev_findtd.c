
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct sigevent {scalar_t__ sigev_notify; int sigev_notify_thread_id; } ;
struct proc {int p_pid; } ;


 int ESRCH ;
 int PROC_LOCK (struct proc*) ;
 scalar_t__ SIGEV_THREAD_ID ;
 struct thread* tdfind (int ,int ) ;

int
sigev_findtd(struct proc *p ,struct sigevent *sigev, struct thread **ttd)
{
 struct thread *td;

 if (sigev->sigev_notify == SIGEV_THREAD_ID) {
  td = tdfind(sigev->sigev_notify_thread_id, p->p_pid);
  if (td == ((void*)0))
   return (ESRCH);
  *ttd = td;
 } else {
  *ttd = ((void*)0);
  PROC_LOCK(p);
 }
 return (0);
}
