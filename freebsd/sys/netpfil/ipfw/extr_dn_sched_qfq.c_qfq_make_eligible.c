
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned long uint64_t ;
struct qfq_sched {unsigned long V; } ;


 int EB ;
 int ER ;
 int IB ;
 int IR ;
 unsigned long QFQ_MIN_SLOT_SHIFT ;
 unsigned long long __fls (unsigned long) ;
 int qfq_move_groups (struct qfq_sched*,unsigned long,int ,int ) ;

__attribute__((used)) static inline void
qfq_make_eligible(struct qfq_sched *q, uint64_t old_V)
{
 unsigned long mask, vslot, old_vslot;

 vslot = q->V >> QFQ_MIN_SLOT_SHIFT;
 old_vslot = old_V >> QFQ_MIN_SLOT_SHIFT;

 if (vslot != old_vslot) {

  mask = (2ULL << (__fls(vslot ^ old_vslot))) - 1;
  qfq_move_groups(q, mask, IR, ER);
  qfq_move_groups(q, mask, IB, EB);
 }
}
