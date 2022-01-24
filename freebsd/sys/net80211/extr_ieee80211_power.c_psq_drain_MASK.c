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
struct mbuf {struct mbuf* m_nextpkt; } ;
struct ieee80211_psq_head {scalar_t__ len; int /*<<< orphan*/ * tail; struct mbuf* head; } ;
struct ieee80211_psq {int psq_len; struct ieee80211_psq_head* psq_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_psq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_psq*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 

__attribute__((used)) static int
FUNC3(struct ieee80211_psq *psq)
{
	struct ieee80211_psq_head *qhead;
	struct mbuf *m;
	int qlen;

	FUNC0(psq);
	qlen = psq->psq_len;
	qhead = &psq->psq_head[0];
again:
	while ((m = qhead->head) != NULL) {
		qhead->head = m->m_nextpkt;
		FUNC2(m);
	}
	qhead->tail = NULL;
	qhead->len = 0;
	if (qhead == &psq->psq_head[0]) {	/* Algol-68 style for loop */
		qhead = &psq->psq_head[1];
		goto again;
	}
	psq->psq_len = 0;
	FUNC1(psq);

	return qlen;
}