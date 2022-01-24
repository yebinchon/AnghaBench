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
typedef  void u_char ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {size_t m_len; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_data; struct mbuf* m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t MCLBYTES ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t MHLEN ; 
 size_t MLEN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 struct mbuf* FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct mbuf *
FUNC6(void *h, size_t hlen, void *t, size_t tlen)
{
	struct mbuf *m, *m0, *last;
	u_char *buf = (u_char *)t;
	size_t n;

	/* header should fit into a normal mbuf */
	FUNC2(m0, M_NOWAIT, MT_DATA);
	if (m0 == NULL)
		return NULL;

	FUNC0(hlen <= MHLEN, ("hlen > MHLEN"));

	FUNC3(h, m0->m_data, hlen);
	m0->m_len = hlen;
	m0->m_pkthdr.len = hlen;

	last = m0;
	while ((n = tlen) != 0) {
		if (n > MLEN) {
			m = FUNC5(M_NOWAIT, MT_DATA, 0);
			if (n > MCLBYTES)
				n = MCLBYTES;
		} else
			FUNC1(m, M_NOWAIT, MT_DATA);

		if(m == NULL)
			goto drop;

		last->m_next = m;
		last = m;

		FUNC3(buf, m->m_data, n);
		buf += n;
		tlen -= n;
		m->m_len = n;
		m0->m_pkthdr.len += n;
	}

	return (m0);

  drop:
	FUNC4(m0);
	return NULL;
}