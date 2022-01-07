
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rr_si {int dummy; } ;
struct rr_queue {int status; } ;
struct mbuf {int dummy; } ;
struct dn_sch_inst {int dummy; } ;
struct TYPE_2__ {struct mbuf* head; } ;
struct dn_queue {TYPE_1__ mq; } ;


 scalar_t__ dn_enqueue (struct dn_queue*,struct mbuf*,int ) ;
 int rr_append (struct rr_queue*,struct rr_si*) ;

__attribute__((used)) static int
rr_enqueue(struct dn_sch_inst *_si, struct dn_queue *q, struct mbuf *m)
{
 struct rr_si *si;
 struct rr_queue *rrq;

 if (m != q->mq.head) {
  if (dn_enqueue(q, m, 0))
   return 1;
  if (m != q->mq.head)
   return 0;
 }


 si = (struct rr_si *)(_si + 1);
 rrq = (struct rr_queue *)q;

 if (rrq->status == 1)
  return 0;


 rr_append(rrq, si);

 return 0;
}
