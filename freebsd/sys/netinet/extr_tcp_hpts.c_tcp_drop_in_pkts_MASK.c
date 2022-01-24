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
struct tcpcb {struct mbuf* t_in_pkt; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*) ; 

__attribute__((used)) static void
FUNC1(struct tcpcb *tp)
{
	struct mbuf *m, *n;
	
	m = tp->t_in_pkt;
	if (m)
		n = m->m_nextpkt;
	else
		n = NULL;
	tp->t_in_pkt = NULL;
	while (m) {
		FUNC0(m);
		m = n;
		if (m)
			n = m->m_nextpkt;
	}
}