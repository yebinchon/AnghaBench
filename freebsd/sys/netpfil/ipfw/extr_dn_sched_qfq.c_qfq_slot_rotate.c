
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct qfq_sched {int dummy; } ;
struct qfq_group {unsigned int S; unsigned int slot_shift; unsigned int full_slots; unsigned int front; } ;


 unsigned int QFQ_MAX_SLOTS ;

__attribute__((used)) static inline void
qfq_slot_rotate(struct qfq_sched *q, struct qfq_group *grp, uint64_t roundedS)
{
 unsigned int i = (grp->S - roundedS) >> grp->slot_shift;

 (void)q;
 grp->full_slots <<= i;
 grp->front = (grp->front - i) % QFQ_MAX_SLOTS;
}
