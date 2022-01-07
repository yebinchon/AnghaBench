
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct qfq_sched {int dummy; } ;
struct qfq_group {scalar_t__ S; int slot_shift; } ;
struct TYPE_7__ {TYPE_2__* head; } ;
struct TYPE_8__ {TYPE_3__ mq; } ;
struct qfq_class {scalar_t__ inv_w; scalar_t__ S; scalar_t__ F; TYPE_4__ _q; } ;
struct TYPE_5__ {unsigned int len; } ;
struct TYPE_6__ {TYPE_1__ m_pkthdr; } ;


 int qfq_front_slot_remove (struct qfq_group*) ;
 scalar_t__ qfq_round_down (scalar_t__,int ) ;
 int qfq_slot_insert (struct qfq_group*,struct qfq_class*,scalar_t__) ;

__attribute__((used)) static inline int
qfq_update_class(struct qfq_sched *q, struct qfq_group *grp,
     struct qfq_class *cl)
{

 (void)q;
 cl->S = cl->F;
 if (cl->_q.mq.head == ((void*)0)) {
  qfq_front_slot_remove(grp);
 } else {
  unsigned int len;
  uint64_t roundedS;

  len = cl->_q.mq.head->m_pkthdr.len;
  cl->F = cl->S + (uint64_t)len * cl->inv_w;
  roundedS = qfq_round_down(cl->S, grp->slot_shift);
  if (roundedS == grp->S)
   return 0;

  qfq_front_slot_remove(grp);
  qfq_slot_insert(grp, cl, roundedS);
 }
 return 1;
}
