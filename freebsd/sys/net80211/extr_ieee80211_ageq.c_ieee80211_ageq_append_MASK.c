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
struct ieee80211_ageq {scalar_t__ aq_len; scalar_t__ aq_maxlen; int /*<<< orphan*/  aq_drops; struct mbuf* aq_tail; struct mbuf* aq_head; } ;

/* Variables and functions */
 int ENOSPC ; 
 int /*<<< orphan*/  FUNC0 (struct ieee80211_ageq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_ageq*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 scalar_t__ FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,int) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*) ; 

int
FUNC7(struct ieee80211_ageq *aq, struct mbuf *m, int age)
{
	FUNC0(aq);
	if (FUNC5(aq->aq_len < aq->aq_maxlen)) {
		if (aq->aq_tail == NULL) {
			aq->aq_head = m;
		} else {
			aq->aq_tail->m_nextpkt = m;
			age -= FUNC3(aq->aq_head);
		}
		FUNC2(age >= 0, ("age %d", age));
		FUNC4(m, age);
		m->m_nextpkt = NULL;
		aq->aq_tail = m;
		aq->aq_len++;
		FUNC1(aq);
		return 0;
	} else {
		/*
		 * No space, drop and cleanup references.
		 */
		aq->aq_drops++;
		FUNC1(aq);
		/* XXX tail drop? */
		FUNC6(m);
		return ENOSPC;
	}
}