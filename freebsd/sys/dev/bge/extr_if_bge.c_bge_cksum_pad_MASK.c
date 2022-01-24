#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int len; } ;
struct mbuf {scalar_t__ m_len; TYPE_1__ m_pkthdr; struct mbuf* m_next; } ;

/* Variables and functions */
 int ENOBUFS ; 
 int ETHER_MIN_NOPAD ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int FUNC1 (struct mbuf*) ; 
 scalar_t__ FUNC2 (struct mbuf*) ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static __inline int
FUNC5(struct mbuf *m)
{
	int padlen = ETHER_MIN_NOPAD - m->m_pkthdr.len;
	struct mbuf *last;

	/* If there's only the packet-header and we can pad there, use it. */
	if (m->m_pkthdr.len == m->m_len && FUNC2(m) &&
	    FUNC1(m) >= padlen) {
		last = m;
	} else {
		/*
		 * Walk packet chain to find last mbuf. We will either
		 * pad there, or append a new mbuf and pad it.
		 */
		for (last = m; last->m_next != NULL; last = last->m_next);
		if (!(FUNC2(last) && FUNC1(last) >= padlen)) {
			/* Allocate new empty mbuf, pad it. Compact later. */
			struct mbuf *n;

			FUNC0(n, M_NOWAIT, MT_DATA);
			if (n == NULL)
				return (ENOBUFS);
			n->m_len = 0;
			last->m_next = n;
			last = n;
		}
	}

	/* Now zero the pad area, to avoid the bge cksum-assist bug. */
	FUNC3(FUNC4(last, caddr_t) + last->m_len, 0, padlen);
	last->m_len += padlen;
	m->m_pkthdr.len += padlen;

	return (0);
}