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
typedef  scalar_t__ u_int ;
struct TYPE_2__ {scalar_t__ len; } ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ MINCLSIZE ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 scalar_t__ FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (void*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 scalar_t__ FUNC6 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mbuf *FUNC7 (void *buf, u_int len)
{
	struct mbuf *m, *o, *p;

	FUNC2 (m, M_NOWAIT, MT_DATA);

	if (! m)
		return 0;

	if (len >= MINCLSIZE)
		FUNC0 (m, M_NOWAIT);

	m->m_pkthdr.len = len;
	m->m_len = 0;

	p = m;
	while (len) {
		u_int n = FUNC3 (p);
		if (n > len)
			n = len;
		if (! n) {
			/* Allocate new mbuf. */
			o = p;
			FUNC1 (p, M_NOWAIT, MT_DATA);
			if (! p) {
				FUNC5 (m);
				return 0;
			}
			if (len >= MINCLSIZE)
				FUNC0 (p, M_NOWAIT);
			p->m_len = 0;
			o->m_next = p;

			n = FUNC3 (p);
			if (n > len)
				n = len;
		}
		FUNC4 (buf, FUNC6 (p, caddr_t) + p->m_len, n);

		p->m_len += n;
		buf = n + (char*) buf;
		len -= n;
	}
	return m;
}