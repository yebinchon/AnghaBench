
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct qfq_sched {struct qfq_group* groups; } ;
struct qfq_group {int index; int slot_shift; } ;
struct dn_sch_inst {int dummy; } ;


 int FRAC_BITS ;
 int QFQ_MAX_INDEX ;
 int QFQ_MTU_SHIFT ;

__attribute__((used)) static int
qfq_new_sched(struct dn_sch_inst *si)
{
 struct qfq_sched *q = (struct qfq_sched *)(si + 1);
 struct qfq_group *grp;
 int i;

 for (i = 0; i <= QFQ_MAX_INDEX; i++) {
  grp = &q->groups[i];
  grp->index = i;
  grp->slot_shift = QFQ_MTU_SHIFT + FRAC_BITS -
     (QFQ_MAX_INDEX - i);
 }
 return 0;
}
