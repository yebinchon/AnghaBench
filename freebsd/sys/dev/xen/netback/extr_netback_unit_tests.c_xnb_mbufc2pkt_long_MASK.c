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
struct xnb_pkt {size_t size; scalar_t__ car; int car_size; int flags; scalar_t__ cdr; } ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {int m_len; struct mbuf* m_next; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int MCLBYTES ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NETRXF_extra_info ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 struct mbuf* FUNC3 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf**) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,struct xnb_pkt*,scalar_t__,int) ; 
 int FUNC6 (struct xnb_pkt*) ; 

__attribute__((used)) static void
FUNC7(char *buffer, size_t buflen) {
	struct xnb_pkt pkt;
	size_t size = 14 * MCLBYTES / 3;
	size_t size_remaining;
	int free_slots = 15;
	RING_IDX start = 3;
	struct mbuf *mbufc, *m;

	mbufc = FUNC3(NULL, size, M_WAITOK, MT_DATA);
	FUNC2(mbufc != NULL);
	if (mbufc == NULL)
		return;
	mbufc->m_flags |= M_PKTHDR;

	mbufc->m_pkthdr.len = size;
	size_remaining = size;
	for (m = mbufc; m != NULL; m = m->m_next) {
		m->m_len = FUNC0(FUNC1(m), size_remaining);
		size_remaining -= m->m_len;
	}

	FUNC5(mbufc, &pkt, start, free_slots);
	FUNC2(FUNC6(&pkt));
	FUNC2(pkt.size == size);
	FUNC2(pkt.car == start);
	FUNC2(pkt.car_size = mbufc->m_len);
	/*
	 * There should be >1 response in the packet, and there is no
	 * extra info.
	 */
	FUNC2(! (pkt.flags & NETRXF_extra_info));
	FUNC2(pkt.cdr == pkt.car + 1);

	FUNC4(&mbufc);
}