
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct mbq {int count; struct mbuf* tail; struct mbuf* head; } ;



__attribute__((used)) static inline void __mbq_enqueue(struct mbq *q, struct mbuf *m)
{
    m->m_nextpkt = ((void*)0);
    if (q->tail) {
        q->tail->m_nextpkt = m;
        q->tail = m;
    } else {
        q->head = q->tail = m;
    }
    q->count++;
}
