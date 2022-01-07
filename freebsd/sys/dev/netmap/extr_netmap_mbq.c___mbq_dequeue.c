
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct mbq {int count; int * tail; struct mbuf* head; } ;



__attribute__((used)) static inline struct mbuf *__mbq_dequeue(struct mbq *q)
{
    struct mbuf *ret = ((void*)0);

    if (q->head) {
        ret = q->head;
        q->head = ret->m_nextpkt;
        if (q->head == ((void*)0)) {
            q->tail = ((void*)0);
        }
        q->count--;
        ret->m_nextpkt = ((void*)0);
    }

    return ret;
}
