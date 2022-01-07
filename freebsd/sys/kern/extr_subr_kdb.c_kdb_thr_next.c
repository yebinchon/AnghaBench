
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {struct proc* td_proc; } ;
struct proc {int p_flag; } ;


 struct thread* FIRST_THREAD_IN_PROC (struct proc*) ;
 struct proc* LIST_NEXT (struct proc*,int ) ;
 int P_INMEM ;
 struct thread* TAILQ_NEXT (struct thread*,int ) ;
 int p_list ;
 int td_plist ;

struct thread *
kdb_thr_next(struct thread *thr)
{
 struct proc *p;

 p = thr->td_proc;
 thr = TAILQ_NEXT(thr, td_plist);
 do {
  if (thr != ((void*)0))
   return (thr);
  p = LIST_NEXT(p, p_list);
  if (p != ((void*)0) && (p->p_flag & P_INMEM))
   thr = FIRST_THREAD_IN_PROC(p);
 } while (p != ((void*)0));
 return (((void*)0));
}
