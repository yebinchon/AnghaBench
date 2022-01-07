
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mq {struct mbuf* tail; int count; struct mbuf* head; } ;
struct mbuf {int m_flags; int m_data; int __m_extbuf; int __m_extlen; struct mbuf* m_nextpkt; } ;


 int MGETHDR (struct mbuf*,int ,int ) ;
 int MT_DATA ;
 int M_NOWAIT ;
 int M_STACK ;
 int ND (char*,struct mbuf*,...) ;
 int _pkt_copy (int,void*,int) ;
 int panic (char*) ;

__attribute__((used)) static inline void
mq_append(struct mq *q, struct mbuf *m)
{
 if (q->head == ((void*)0))
  q->head = m;
 else
  q->tail->m_nextpkt = m;
 q->count++;
 q->tail = m;
 m->m_nextpkt = ((void*)0);
}
