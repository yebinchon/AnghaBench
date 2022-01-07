
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc {int p_flag; } ;


 int LIST_INSERT_AFTER (struct proc*,struct proc*,int ) ;
 int LIST_INSERT_HEAD (int *,struct proc*,int ) ;
 struct proc* LIST_NEXT (struct proc*,int ) ;
 int LIST_REMOVE (struct proc*,int ) ;
 int PRI_USER ;
 int PROC_LOCK (struct proc*) ;
 int PROC_UNLOCK (struct proc*) ;
 int P_KPROC ;
 scalar_t__ P_SHOULDSTOP (struct proc*) ;
 scalar_t__ P_STOPPED_SINGLE ;
 int P_SYSTEM ;
 int P_TOTAL_STOP ;
 int P_WEXIT ;
 int SINGLE_ALLPROC ;
 int _PHOLD (struct proc*) ;
 int _PRELE (struct proc*) ;
 int allproc ;
 int allproc_gen ;
 int allproc_lock ;
 struct proc* curproc ;
 int kern_yield (int ) ;
 int p_list ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;
 int thread_single (struct proc*,int ) ;

void
stop_all_proc(void)
{
 struct proc *cp, *p;
 int r, gen;
 bool restart, seen_stopped, seen_exiting, stopped_some;

 cp = curproc;
allproc_loop:
 sx_xlock(&allproc_lock);
 gen = allproc_gen;
 seen_exiting = seen_stopped = stopped_some = restart = 0;
 LIST_REMOVE(cp, p_list);
 LIST_INSERT_HEAD(&allproc, cp, p_list);
 for (;;) {
  p = LIST_NEXT(cp, p_list);
  if (p == ((void*)0))
   break;
  LIST_REMOVE(cp, p_list);
  LIST_INSERT_AFTER(p, cp, p_list);
  PROC_LOCK(p);
  if ((p->p_flag & (P_KPROC | P_SYSTEM | P_TOTAL_STOP)) != 0) {
   PROC_UNLOCK(p);
   continue;
  }
  if ((p->p_flag & P_WEXIT) != 0) {
   seen_exiting = 1;
   PROC_UNLOCK(p);
   continue;
  }
  if (P_SHOULDSTOP(p) == P_STOPPED_SINGLE) {







   seen_stopped = 1;
   PROC_UNLOCK(p);
   continue;
  }
  sx_xunlock(&allproc_lock);
  _PHOLD(p);
  r = thread_single(p, SINGLE_ALLPROC);
  if (r != 0)
   restart = 1;
  else
   stopped_some = 1;
  _PRELE(p);
  PROC_UNLOCK(p);
  sx_xlock(&allproc_lock);
 }

 if (gen != allproc_gen)
  restart = 1;
 sx_xunlock(&allproc_lock);
 if (restart || stopped_some || seen_exiting || seen_stopped) {
  kern_yield(PRI_USER);
  goto allproc_loop;
 }
}
