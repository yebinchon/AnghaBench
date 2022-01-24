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
struct uni_msg {void* b_rptr; } ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {size_t m_len; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_data; struct mbuf* m_next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 size_t MCLBYTES ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t MHLEN ; 
 size_t MLEN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_NOWAIT ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*) ; 
 size_t FUNC6 (struct uni_msg*) ; 

struct mbuf *
FUNC7(struct uni_msg *msg, void *hdr, size_t hdrlen)
{
	struct mbuf *m, *m0, *last;
	size_t n;

	FUNC3(m0, M_NOWAIT, MT_DATA);
	if (m0 == NULL)
		return (NULL);

	FUNC0(hdrlen <= MHLEN, ("uni_msg_pack_mbuf: hdrlen > MHLEN"));

	if (hdrlen != 0) {
		FUNC4(hdr, m0->m_data, hdrlen);
		m0->m_len = hdrlen;
		m0->m_pkthdr.len = hdrlen;

	} else {
		if ((n = FUNC6(msg)) > MHLEN) {
			if (!(FUNC1(m0, M_NOWAIT)))
				goto drop;
			if (n > MCLBYTES)
				n = MCLBYTES;
		}

		FUNC4(msg->b_rptr, m0->m_data, n);
		msg->b_rptr += n;
		m0->m_len = n;
		m0->m_pkthdr.len = n;
	}

	last = m0;
	while (msg != NULL && (n = FUNC6(msg)) != 0) {
		FUNC2(m, M_NOWAIT, MT_DATA);
		if (m == NULL)
			goto drop;
		last->m_next = m;
		last = m;

		if (n > MLEN) {
			if (!(FUNC1(m, M_NOWAIT)))
				goto drop;
			if (n > MCLBYTES)
				n = MCLBYTES;
		}

		FUNC4(msg->b_rptr, m->m_data, n);
		msg->b_rptr += n;
		m->m_len = n;
		m0->m_pkthdr.len += n;
	}

	return (m0);

  drop:
	FUNC5(m0);
	return (NULL);
}