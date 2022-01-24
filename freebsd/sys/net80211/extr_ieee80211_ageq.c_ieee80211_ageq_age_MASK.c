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
struct ieee80211_ageq {scalar_t__ aq_len; int /*<<< orphan*/ * aq_tail; struct mbuf* aq_head; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ieee80211_ageq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_ageq*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int) ; 

struct mbuf *
FUNC5(struct ieee80211_ageq *aq, int quanta)
{
	struct mbuf *head, **phead;
	struct mbuf *m;

	phead = &head;
	if (aq->aq_len != 0) {
		FUNC0(aq);
		while ((m = aq->aq_head) != NULL && FUNC3(m) < quanta) {
			if ((aq->aq_head = m->m_nextpkt) == NULL)
				aq->aq_tail = NULL;
			FUNC2(aq->aq_len > 0, ("aq len %d", aq->aq_len));
			aq->aq_len--;
			/* add to private list for return */
			*phead = m;
			phead = &m->m_nextpkt;
		}
		if (m != NULL)
			FUNC4(m, quanta);
		FUNC1(aq);
	}
	*phead = NULL;
	return head;
}