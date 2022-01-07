
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_group {int full_slots; int front; struct qfq_class** slots; int index; } ;
struct qfq_class {int dummy; } ;


 int ND (char*,int ,int) ;
 int QFQ_MAX_SLOTS ;
 int ffs (int) ;

__attribute__((used)) static inline struct qfq_class *
qfq_slot_scan(struct qfq_group *grp)
{
 int i;

 ND("grp %d full %x", grp->index, grp->full_slots);
 if (!grp->full_slots)
  return ((void*)0);

 i = ffs(grp->full_slots) - 1;
 if (i > 0) {
  grp->front = (grp->front + i) % QFQ_MAX_SLOTS;
  grp->full_slots >>= i;
 }

 return grp->slots[grp->front];
}
