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
struct mbuf {int m_flags; int m_len; int /*<<< orphan*/  m_type; } ;

/* Variables and functions */
 int MCLBYTES ; 
 int MINCLSIZE ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,struct mbuf*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 struct mbuf* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (int,int /*<<< orphan*/ ,int) ; 
 struct mbuf* FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mbuf *
FUNC7(struct mbuf *m, int off, int len, int wait)
{
	struct mbuf *n;
	int copyhdr;

	if (len > MCLBYTES)
		return NULL;
	if (off == 0 && (m->m_flags & M_PKTHDR) != 0)
		copyhdr = 1;
	else
		copyhdr = 0;
	if (len >= MINCLSIZE) {
		if (copyhdr == 1)
			n = FUNC4(wait, m->m_type, M_PKTHDR);
		else
			n = FUNC4(wait, m->m_type, 0);
	} else {
		if (copyhdr == 1)
			n = FUNC5(wait, m->m_type);
		else
			n = FUNC3(wait, m->m_type);
	}
	if (!n)
		return NULL; /* ENOBUFS */

	if (copyhdr && !FUNC1(n, m, wait)) {
		FUNC2(n);
		return NULL;
	}
	FUNC0(m, off, len, FUNC6(n, caddr_t));
	n->m_len = len;
	return n;
}