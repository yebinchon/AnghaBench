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
struct ifaltq {scalar_t__ ifq_len; scalar_t__ ifq_tail; struct mbuf* ifq_head; } ;
struct ifnet {struct ifaltq if_snd; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ifaltq*) ; 
 int /*<<< orphan*/  FUNC1 (struct ifaltq*) ; 
 int /*<<< orphan*/  FUNC2 (struct ifaltq*) ; 
 int /*<<< orphan*/  FUNC3 (struct ifaltq*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 

void
FUNC5(struct ifnet *ifp)
{
	struct mbuf *m, *n;
	struct ifaltq *ifq;
	
	ifq = &ifp->if_snd;
	FUNC2(ifq);
#ifdef ALTQ
	if (ALTQ_IS_ENABLED(ifq))
		ALTQ_PURGE(ifq);
#endif
	n = ifq->ifq_head;
	while ((m = n) != NULL) {
		n = m->m_nextpkt;
		FUNC4(m);
	}
	ifq->ifq_head = 0;
	ifq->ifq_tail = 0;
	ifq->ifq_len = 0;
	FUNC3(ifq);
}