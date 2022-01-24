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
struct mbuf {int m_flags; int m_len; struct mbuf* m_next; int /*<<< orphan*/  m_type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int) ; 
 int M_PKTHDR ; 
 int FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*) ; 
 struct mbuf* FUNC3 (int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,struct mbuf*) ; 

struct mbuf *
FUNC6(struct mbuf *m, int len, int how)
{
	struct mbuf *mn;

	if (m->m_flags & M_PKTHDR)
		mn = FUNC4(how, m->m_type);
	else
		mn = FUNC3(how, m->m_type);
	if (mn == NULL) {
		FUNC2(m);
		return (NULL);
	}
	if (m->m_flags & M_PKTHDR)
		FUNC5(mn, m);
	mn->m_next = m;
	m = mn;
	if (len < FUNC1(m))
		FUNC0(m, len);
	m->m_len = len;
	return (m);
}