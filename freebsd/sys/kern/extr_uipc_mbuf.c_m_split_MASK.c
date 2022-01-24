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
struct TYPE_2__ {int csum_flags; int len; int /*<<< orphan*/  rcvif; void* snd_tag; } ;
struct mbuf {scalar_t__ m_len; int m_flags; struct mbuf* m_next; scalar_t__ m_data; int /*<<< orphan*/  m_type; TYPE_1__ m_pkthdr; } ;

/* Variables and functions */
 int CSUM_SND_TAG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ MHLEN ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*,scalar_t__) ; 
 int M_EXT ; 
 int M_PKTHDR ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  caddr_t ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*) ; 
 struct mbuf* FUNC4 (int,int /*<<< orphan*/ ) ; 
 struct mbuf* FUNC5 (int,int /*<<< orphan*/ ) ; 
 void* FUNC6 (void*) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,struct mbuf*) ; 
 scalar_t__ FUNC8 (struct mbuf*,int /*<<< orphan*/ ) ; 

struct mbuf *
FUNC9(struct mbuf *m0, int len0, int wait)
{
	struct mbuf *m, *n;
	u_int len = len0, remain;

	FUNC0(wait);
	for (m = m0; m && len > m->m_len; m = m->m_next)
		len -= m->m_len;
	if (m == NULL)
		return (NULL);
	remain = m->m_len - len;
	if (m0->m_flags & M_PKTHDR && remain == 0) {
		n = FUNC5(wait, m0->m_type);
		if (n == NULL)
			return (NULL);
		n->m_next = m->m_next;
		m->m_next = NULL;
		if (m0->m_pkthdr.csum_flags & CSUM_SND_TAG) {
			n->m_pkthdr.snd_tag =
			    FUNC6(m0->m_pkthdr.snd_tag);
			n->m_pkthdr.csum_flags |= CSUM_SND_TAG;
		} else
			n->m_pkthdr.rcvif = m0->m_pkthdr.rcvif;
		n->m_pkthdr.len = m0->m_pkthdr.len - len0;
		m0->m_pkthdr.len = len0;
		return (n);
	} else if (m0->m_flags & M_PKTHDR) {
		n = FUNC5(wait, m0->m_type);
		if (n == NULL)
			return (NULL);
		if (m0->m_pkthdr.csum_flags & CSUM_SND_TAG) {
			n->m_pkthdr.snd_tag =
			    FUNC6(m0->m_pkthdr.snd_tag);
			n->m_pkthdr.csum_flags |= CSUM_SND_TAG;
		} else
			n->m_pkthdr.rcvif = m0->m_pkthdr.rcvif;
		n->m_pkthdr.len = m0->m_pkthdr.len - len0;
		m0->m_pkthdr.len = len0;
		if (m->m_flags & M_EXT)
			goto extpacket;
		if (remain > MHLEN) {
			/* m can't be the lead packet */
			FUNC1(n, 0);
			n->m_next = FUNC9(m, len, wait);
			if (n->m_next == NULL) {
				(void) FUNC3(n);
				return (NULL);
			} else {
				n->m_len = 0;
				return (n);
			}
		} else
			FUNC1(n, remain);
	} else if (remain == 0) {
		n = m->m_next;
		m->m_next = NULL;
		return (n);
	} else {
		n = FUNC4(wait, m->m_type);
		if (n == NULL)
			return (NULL);
		FUNC1(n, remain);
	}
extpacket:
	if (m->m_flags & M_EXT) {
		n->m_data = m->m_data + len;
		FUNC7(n, m);
	} else {
		FUNC2(FUNC8(m, caddr_t) + len, FUNC8(n, caddr_t), remain);
	}
	n->m_len = remain;
	m->m_len = len;
	n->m_next = m->m_next;
	m->m_next = NULL;
	return (n);
}