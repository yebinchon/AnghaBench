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
struct xnb_pkt {size_t size; scalar_t__ car; size_t car_size; int list_len; scalar_t__ cdr; } ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {size_t m_len; int /*<<< orphan*/ * m_next; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int MHLEN ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mbuf* FUNC1 (struct mbuf*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf**) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct xnb_pkt*,scalar_t__,int) ; 
 int FUNC4 (struct xnb_pkt*) ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen) {
	struct xnb_pkt pkt;
	size_t size1 = MHLEN - 5;
	size_t size2 = MHLEN - 15;
	int free_slots = 32;
	RING_IDX start = 14;
	struct mbuf *mbufc, *mbufc2;

	mbufc = FUNC1(NULL, size1, M_WAITOK, MT_DATA);
	FUNC0(mbufc != NULL);
	if (mbufc == NULL)
		return;
	mbufc->m_flags |= M_PKTHDR;

	mbufc2 = FUNC1(mbufc, size2, M_WAITOK, MT_DATA);
	FUNC0(mbufc2 != NULL);
	if (mbufc2 == NULL) {
		FUNC2(&mbufc);
		return;
	}
	mbufc2->m_pkthdr.len = size1 + size2;
	mbufc2->m_len = size1;

	FUNC3(mbufc2, &pkt, start, free_slots);
	FUNC0(FUNC4(&pkt));
	FUNC0(pkt.size == size1 + size2);
	FUNC0(pkt.car == start);
	/*
	 * The second m_getm may allocate a new mbuf and append
	 * it to the chain, or it may simply extend the first mbuf.
	 */
	if (mbufc2->m_next != NULL) {
		FUNC0(pkt.car_size == size1);
		FUNC0(pkt.list_len == 1);
		FUNC0(pkt.cdr == start + 1);
	}

	FUNC2(&mbufc2);
}