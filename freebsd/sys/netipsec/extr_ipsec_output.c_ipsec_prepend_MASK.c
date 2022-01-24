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
struct mbuf {int m_data; int m_len; TYPE_1__ m_pkthdr; struct mbuf* m_next; int /*<<< orphan*/  m_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 scalar_t__ IPSEC_TRAILINGSPACE ; 
 int MHLEN ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int FUNC2 (struct mbuf*) ; 
 scalar_t__ FUNC3 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 struct mbuf* FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,struct mbuf*) ; 

__attribute__((used)) static struct mbuf *
FUNC8(struct mbuf *m, int len, int how)
{
	struct mbuf *n;

	FUNC1(m);
	FUNC0(len < MHLEN, ("wrong length"));
	if (FUNC2(m) >= len) {
		/* No need to allocate new mbuf. */
		m->m_data -= len;
		m->m_len += len;
		m->m_pkthdr.len += len;
		return (m);
	}
	n = FUNC6(how, m->m_type);
	if (n == NULL) {
		FUNC5(m);
		return (NULL);
	}
	FUNC7(n, m);
	n->m_next = m;
	if (len + IPSEC_TRAILINGSPACE < FUNC3(n))
		FUNC4(n, len + IPSEC_TRAILINGSPACE);
	n->m_len = len;
	n->m_pkthdr.len += len;
	return (n);
}