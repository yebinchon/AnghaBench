
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct dmar_unit {int inv_waitd_seq; int inv_waitd_gen; } ;
struct dmar_qi_genseq {int seq; int gen; } ;


 int DMAR_ASSERT_LOCKED (struct dmar_unit*) ;
 int KASSERT (int ,char*) ;
 int cpu_spinwait () ;
 int dmar_qi_advance_tail (struct dmar_unit*) ;
 int dmar_qi_emit_wait_descr (struct dmar_unit*,int,int,int,int) ;
 int dmar_qi_ensure (struct dmar_unit*,int) ;
 int dmar_qi_seq_processed (struct dmar_unit*,struct dmar_qi_genseq*) ;

__attribute__((used)) static void
dmar_qi_emit_wait_seq(struct dmar_unit *unit, struct dmar_qi_genseq *pseq,
    bool emit_wait)
{
 struct dmar_qi_genseq gsec;
 uint32_t seq;

 KASSERT(pseq != ((void*)0), ("wait descriptor with no place for seq"));
 DMAR_ASSERT_LOCKED(unit);
 if (unit->inv_waitd_seq == 0xffffffff) {
  gsec.gen = unit->inv_waitd_gen;
  gsec.seq = unit->inv_waitd_seq;
  dmar_qi_ensure(unit, 1);
  dmar_qi_emit_wait_descr(unit, gsec.seq, 0, 1, 0);
  dmar_qi_advance_tail(unit);
  while (!dmar_qi_seq_processed(unit, &gsec))
   cpu_spinwait();
  unit->inv_waitd_gen++;
  unit->inv_waitd_seq = 1;
 }
 seq = unit->inv_waitd_seq++;
 pseq->gen = unit->inv_waitd_gen;
 pseq->seq = seq;
 if (emit_wait) {
  dmar_qi_ensure(unit, 1);
  dmar_qi_emit_wait_descr(unit, seq, 1, 1, 0);
 }
}
