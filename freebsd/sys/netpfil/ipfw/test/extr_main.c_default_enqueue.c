
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mq {struct mbuf* tail; struct mbuf* head; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct dn_sch_inst {int dummy; } ;
struct dn_queue {int dummy; } ;



__attribute__((used)) static int
default_enqueue(struct dn_sch_inst *si, struct dn_queue *q, struct mbuf *m)
{
 struct mq *mq = (struct mq *)si;

 (void)q;

 if (mq->head == ((void*)0))
  mq->head = m;
 else
  mq->tail->m_nextpkt = m;
 mq->tail = m;
 return 0;
}
