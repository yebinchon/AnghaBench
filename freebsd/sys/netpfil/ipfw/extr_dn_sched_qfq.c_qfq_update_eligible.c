
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct qfq_sched {int* bitmaps; int V; } ;
struct qfq_group {int S; } ;
typedef int bitmap ;


 size_t ER ;
 size_t IB ;
 size_t IR ;
 struct qfq_group* qfq_ffs (struct qfq_sched*,int) ;
 scalar_t__ qfq_gt (int ,int ) ;
 int qfq_make_eligible (struct qfq_sched*,int ) ;

__attribute__((used)) static inline void
qfq_update_eligible(struct qfq_sched *q, uint64_t old_V)
{
 bitmap ineligible;

 ineligible = q->bitmaps[IR] | q->bitmaps[IB];
 if (ineligible) {
  if (!q->bitmaps[ER]) {
   struct qfq_group *grp;
   grp = qfq_ffs(q, ineligible);
   if (qfq_gt(grp->S, q->V))
    q->V = grp->S;
  }
  qfq_make_eligible(q, old_V);
 }
}
