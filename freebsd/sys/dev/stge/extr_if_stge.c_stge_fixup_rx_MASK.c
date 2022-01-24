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
struct stge_softc {int dummy; } ;
struct mbuf {scalar_t__ m_len; scalar_t__ m_data; struct mbuf* m_next; } ;

/* Variables and functions */
 scalar_t__ ETHER_HDR_LEN ; 
 scalar_t__ MCLBYTES ; 
 int /*<<< orphan*/  FUNC0 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,struct mbuf*) ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 

__attribute__((used)) static __inline struct mbuf *
FUNC4(struct stge_softc *sc, struct mbuf *m)
{
	struct mbuf *n;

	n = NULL;
	if (m->m_len <= (MCLBYTES - ETHER_HDR_LEN)) {
		FUNC2(m->m_data, m->m_data + ETHER_HDR_LEN, m->m_len);
		m->m_data += ETHER_HDR_LEN;
		n = m;
	} else {
		FUNC0(n, M_NOWAIT, MT_DATA);
		if (n != NULL) {
			FUNC2(m->m_data, n->m_data, ETHER_HDR_LEN);
			m->m_data += ETHER_HDR_LEN;
			m->m_len -= ETHER_HDR_LEN;
			n->m_len = ETHER_HDR_LEN;
			FUNC1(n, m);
			n->m_next = m;
		} else
			FUNC3(m);
	}

	return (n);
}