
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int inv_seq_waiters; int lock; } ;
struct dmar_qi_genseq {int dummy; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 scalar_t__ cold ;
 int cpu_spinwait () ;
 int dmar_qi_seq_processed (struct dmar_unit*,struct dmar_qi_genseq const*) ;
 int hz ;
 int msleep (int *,int *,int ,char*,int ) ;

__attribute__((used)) static void
dmar_qi_wait_for_seq(struct dmar_unit *unit, const struct dmar_qi_genseq *gseq,
    bool nowait)
{

 DMAR_ASSERT_LOCKED(unit);
 unit->inv_seq_waiters++;
 while (!dmar_qi_seq_processed(unit, gseq)) {
  if (cold || nowait) {
   cpu_spinwait();
  } else {
   msleep(&unit->inv_seq_waiters, &unit->lock, 0,
       "dmarse", hz);
  }
 }
 unit->inv_seq_waiters--;
}
