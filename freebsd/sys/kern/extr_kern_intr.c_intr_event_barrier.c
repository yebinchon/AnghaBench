
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct intr_event {int ie_phase; scalar_t__* ie_active; int ie_lock; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int atomic_store_rel_int (int*,int) ;
 int atomic_thread_fence_acq () ;
 int atomic_thread_fence_seq_cst () ;
 int cpu_spinwait () ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
intr_event_barrier(struct intr_event *ie)
{
 int phase;

 mtx_assert(&ie->ie_lock, MA_OWNED);
 phase = ie->ie_phase;





 KASSERT(ie->ie_active[!phase] == 0, ("idle phase has activity"));
 atomic_store_rel_int(&ie->ie_phase, !phase);
 atomic_thread_fence_seq_cst();






 while (ie->ie_active[phase] > 0)
  cpu_spinwait();
 atomic_thread_fence_acq();
}
