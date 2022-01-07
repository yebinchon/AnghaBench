
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
struct rr_si {struct rr_queue* head; } ;
struct TYPE_5__ {struct mbuf* head; } ;
struct TYPE_6__ {TYPE_2__ mq; } ;
struct rr_queue {TYPE_3__ q; scalar_t__ credit; scalar_t__ quantum; } ;
struct TYPE_4__ {scalar_t__ len; } ;
struct mbuf {TYPE_1__ m_pkthdr; } ;
struct dn_sch_inst {int dummy; } ;


 struct mbuf* dn_dequeue (TYPE_3__*) ;
 int next_pointer (struct rr_si*) ;
 int rr_remove_head (struct rr_si*) ;

__attribute__((used)) static struct mbuf *
rr_dequeue(struct dn_sch_inst *_si)
{

 struct rr_si *si = (struct rr_si *)(_si + 1);
 struct rr_queue *rrq;
 uint64_t len;

 while ( (rrq = si->head) ) {
  struct mbuf *m = rrq->q.mq.head;
  if ( m == ((void*)0)) {

   rr_remove_head(si);
   continue;
  }
  len = m->m_pkthdr.len;

  if (len > rrq->credit) {

   rrq->credit += rrq->quantum;

   next_pointer(si);
  } else {
   rrq->credit -= len;
   return dn_dequeue(&rrq->q);
  }
 }


 return ((void*)0);
}
