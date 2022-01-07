
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mq {struct mbuf* tail; struct mbuf* head; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;



__attribute__((used)) static inline void
mq_append(struct mq *q, struct mbuf *m)
{
        if (q->head == ((void*)0))
                q->head = m;
        else
                q->tail->m_nextpkt = m;
        q->tail = m;
        m->m_nextpkt = ((void*)0);
}
