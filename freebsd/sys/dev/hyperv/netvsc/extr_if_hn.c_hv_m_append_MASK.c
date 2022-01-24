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
struct mbuf {int m_len; int m_flags; TYPE_1__ m_pkthdr; struct mbuf* m_next; int /*<<< orphan*/  m_type; } ;
typedef  int c_caddr_t ;

/* Variables and functions */
 int /*<<< orphan*/  MJUMPAGESIZE ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int M_PKTHDR ; 
 int FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (int,int,int) ; 
 int /*<<< orphan*/  caddr_t ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int) ; 
 int FUNC4 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(struct mbuf *m0, int len, c_caddr_t cp)
{
	struct mbuf *m, *n;
	int remainder, space;

	for (m = m0; m->m_next != NULL; m = m->m_next)
		;
	remainder = len;
	space = FUNC0(m);
	if (space > 0) {
		/*
		 * Copy into available space.
		 */
		if (space > remainder)
			space = remainder;
		FUNC1(cp, FUNC4(m, caddr_t) + m->m_len, space);
		m->m_len += space;
		cp += space;
		remainder -= space;
	}
	while (remainder > 0) {
		/*
		 * Allocate a new mbuf; could check space
		 * and allocate a cluster instead.
		 */
		n = FUNC2(M_NOWAIT, m->m_type, 0, MJUMPAGESIZE);
		if (n == NULL)
			break;
		n->m_len = FUNC3(MJUMPAGESIZE, remainder);
		FUNC1(cp, FUNC4(n, caddr_t), n->m_len);
		cp += n->m_len;
		remainder -= n->m_len;
		m->m_next = n;
		m = n;
	}
	if (m0->m_flags & M_PKTHDR)
		m0->m_pkthdr.len += len - remainder;

	return (remainder == 0);
}