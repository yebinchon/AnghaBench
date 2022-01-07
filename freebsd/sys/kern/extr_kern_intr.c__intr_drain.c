
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct intr_thread {int it_flags; struct thread* it_thread; } ;
struct intr_event {struct intr_thread* ie_thread; } ;


 int IT_WAIT ;
 int TD_AWAITING_INTR (struct thread*) ;
 struct intr_event* intr_lookup (int) ;
 int pause (char*,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

void
_intr_drain(int irq)
{
 struct intr_event *ie;
 struct intr_thread *ithd;
 struct thread *td;

 ie = intr_lookup(irq);
 if (ie == ((void*)0))
  return;
 if (ie->ie_thread == ((void*)0))
  return;
 ithd = ie->ie_thread;
 td = ithd->it_thread;





 thread_lock(td);
 if (!TD_AWAITING_INTR(td)) {
  ithd->it_flags |= IT_WAIT;
  while (ithd->it_flags & IT_WAIT) {
   thread_unlock(td);
   pause("idrain", 1);
   thread_lock(td);
  }
 }
 thread_unlock(td);
 return;
}
