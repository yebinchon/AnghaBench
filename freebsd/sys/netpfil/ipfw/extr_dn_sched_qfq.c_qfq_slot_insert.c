
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint64_t ;
struct qfq_group {unsigned int S; unsigned int slot_shift; unsigned int front; int full_slots; struct qfq_class** slots; } ;
struct qfq_class {struct qfq_class* next; } ;


 unsigned int QFQ_MAX_SLOTS ;
 int __set_bit (unsigned int,int *) ;

__attribute__((used)) static inline void
qfq_slot_insert(struct qfq_group *grp, struct qfq_class *cl, uint64_t roundedS)
{
 uint64_t slot = (roundedS - grp->S) >> grp->slot_shift;
 unsigned int i = (grp->front + slot) % QFQ_MAX_SLOTS;

 cl->next = grp->slots[i];
 grp->slots[i] = cl;
 __set_bit(slot, &grp->full_slots);
}
