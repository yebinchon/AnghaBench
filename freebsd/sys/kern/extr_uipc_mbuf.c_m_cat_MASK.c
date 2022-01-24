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
typedef  int /*<<< orphan*/  u_int ;
struct mbuf {int m_flags; scalar_t__ m_len; struct mbuf* m_next; } ;

/* Variables and functions */
 int M_NOMAP ; 
 scalar_t__ FUNC0 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  caddr_t ; 
 struct mbuf* FUNC3 (struct mbuf*) ; 
 scalar_t__ FUNC4 (struct mbuf*,int /*<<< orphan*/ ) ; 

void
FUNC5(struct mbuf *m, struct mbuf *n)
{
	while (m->m_next)
		m = m->m_next;
	while (n) {
		if (!FUNC1(m) ||
		    (n->m_flags & M_NOMAP) != 0 ||
		    FUNC0(m) < n->m_len) {
			/* just join the two chains */
			m->m_next = n;
			return;
		}
		/* splat the data from one into the other */
		FUNC2(FUNC4(n, caddr_t), FUNC4(m, caddr_t) + m->m_len,
		    (u_int)n->m_len);
		m->m_len += n->m_len;
		n = FUNC3(n);
	}
}