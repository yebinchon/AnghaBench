
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_char ;
struct thread {int td_name; } ;
struct intr_thread {struct thread* it_thread; struct intr_event* it_event; } ;
struct intr_event {int ie_fullname; int ie_handlers; int ie_lock; } ;
struct TYPE_2__ {int ih_pri; } ;


 scalar_t__ CK_SLIST_EMPTY (int *) ;
 TYPE_1__* CK_SLIST_FIRST (int *) ;
 int MA_OWNED ;
 int PRI_MAX_ITHD ;
 int mtx_assert (int *,int ) ;
 int sched_clear_tdname (struct thread*) ;
 int sched_prio (struct thread*,int ) ;
 int strlcpy (int ,int ,int) ;
 int thread_lock (struct thread*) ;
 int thread_unlock (struct thread*) ;

__attribute__((used)) static void
ithread_update(struct intr_thread *ithd)
{
 struct intr_event *ie;
 struct thread *td;
 u_char pri;

 ie = ithd->it_event;
 td = ithd->it_thread;
 mtx_assert(&ie->ie_lock, MA_OWNED);


 if (CK_SLIST_EMPTY(&ie->ie_handlers))
  pri = PRI_MAX_ITHD;
 else
  pri = CK_SLIST_FIRST(&ie->ie_handlers)->ih_pri;


 strlcpy(td->td_name, ie->ie_fullname, sizeof(td->td_name));



 thread_lock(td);
 sched_prio(td, pri);
 thread_unlock(td);
}
