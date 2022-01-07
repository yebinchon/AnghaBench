
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mq {struct mbuf* head; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;
struct dn_sch_inst {int dummy; } ;



__attribute__((used)) static struct mbuf *
default_dequeue(struct dn_sch_inst *si)
{
 struct mq *mq = (struct mq *)si;
 struct mbuf *m;

 if ((m = mq->head)) {
  m = mq->head;
  mq->head = m->m_nextpkt;
  m->m_nextpkt = ((void*)0);
 }
 return m;
}
