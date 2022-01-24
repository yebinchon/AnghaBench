#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct mq {struct mbuf* tail; struct mbuf* head; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;

/* Variables and functions */

__attribute__((used)) static inline void
FUNC0(struct mq *q, struct mbuf *m)
{
        if (q->head == NULL)
                q->head = m;
        else
                q->tail->m_nextpkt = m;
        q->tail = m;
        m->m_nextpkt = NULL;
}