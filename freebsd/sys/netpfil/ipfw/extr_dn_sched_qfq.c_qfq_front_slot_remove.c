
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_group {size_t front; int full_slots; struct qfq_class** slots; } ;
struct qfq_class {struct qfq_class* next; } ;


 int __clear_bit (int ,int *) ;

__attribute__((used)) static inline void
qfq_front_slot_remove(struct qfq_group *grp)
{
 struct qfq_class **h = &grp->slots[grp->front];

 *h = (*h)->next;
 if (!*h)
  __clear_bit(0, &grp->full_slots);
}
