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
struct sockbuf {struct mbuf* sb_mbtail; } ;
struct sockaddr {scalar_t__ sa_len; } ;
struct TYPE_2__ {scalar_t__ rsstype; scalar_t__ fibnum; scalar_t__ csum_flags; scalar_t__ flowid; int /*<<< orphan*/ * rcvif; } ;
struct mbuf {scalar_t__ m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 scalar_t__ MLEN ; 
 int /*<<< orphan*/  MT_SONAME ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC0 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC1 (struct sockbuf*) ; 
 int /*<<< orphan*/  FUNC2 (struct sockbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  FUNC3 (struct sockaddr const*,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 struct mbuf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct sockbuf*,struct mbuf*) ; 

__attribute__((used)) static int
FUNC9(struct sockbuf *sb, const struct sockaddr *asa,
    struct mbuf *m0, struct mbuf *control, struct mbuf *ctrl_last)
{
	struct mbuf *m, *n, *nlast;
#if MSIZE <= 256
	if (asa->sa_len > MLEN)
		return (0);
#endif
	m = FUNC5(M_NOWAIT, MT_SONAME);
	if (m == NULL)
		return (0);
	m->m_len = asa->sa_len;
	FUNC3(asa, FUNC7(m, caddr_t), asa->sa_len);
	if (m0) {
		FUNC4(m0);
		FUNC6(m0, NULL);
		/*
		 * Clear some persistent info from pkthdr.
		 * We don't use m_demote(), because some netgraph consumers
		 * expect M_PKTHDR presence.
		 */
		m0->m_pkthdr.rcvif = NULL;
		m0->m_pkthdr.flowid = 0;
		m0->m_pkthdr.csum_flags = 0;
		m0->m_pkthdr.fibnum = 0;
		m0->m_pkthdr.rsstype = 0;
	}
	if (ctrl_last)
		ctrl_last->m_next = m0;	/* concatenate data to control */
	else
		control = m0;
	m->m_next = control;
	for (n = m; n->m_next != NULL; n = n->m_next)
		FUNC8(sb, n);
	FUNC8(sb, n);
	nlast = n;
	FUNC2(sb, m);

	sb->sb_mbtail = nlast;
	FUNC0(sb);

	FUNC1(sb);
	return (1);
}