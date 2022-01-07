
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct umtxq_chain {int uc_busy; int uc_waiters; int uc_lock; } ;
struct umtx_key {int dummy; } ;


 int BUSY_SPINS ;
 int MA_OWNED ;
 int cpu_spinwait () ;
 int msleep (struct umtxq_chain*,int *,int ,char*,int ) ;
 int mtx_assert (int *,int ) ;
 int smp_cpus ;
 struct umtxq_chain* umtxq_getchain (struct umtx_key*) ;
 int umtxq_lock (struct umtx_key*) ;
 int umtxq_unlock (struct umtx_key*) ;

__attribute__((used)) static inline void
umtxq_busy(struct umtx_key *key)
{
 struct umtxq_chain *uc;

 uc = umtxq_getchain(key);
 mtx_assert(&uc->uc_lock, MA_OWNED);
 if (uc->uc_busy) {
  while (uc->uc_busy) {
   uc->uc_waiters++;
   msleep(uc, &uc->uc_lock, 0, "umtxqb", 0);
   uc->uc_waiters--;
  }
 }
 uc->uc_busy = 1;
}
