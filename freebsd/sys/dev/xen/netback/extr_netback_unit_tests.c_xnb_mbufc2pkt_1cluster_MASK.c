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
struct xnb_pkt {size_t size; size_t car_size; int flags; int list_len; scalar_t__ car; } ;
struct TYPE_2__ {size_t len; } ;
struct mbuf {size_t m_len; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 size_t MCLBYTES ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NETRXF_extra_info ; 
 int NETRXF_more_data ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 struct mbuf* FUNC1 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mbuf**) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,struct xnb_pkt*,scalar_t__,int) ; 
 int FUNC4 (struct xnb_pkt*) ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen) {
	struct xnb_pkt pkt;
	size_t size = MCLBYTES;
	int free_slots = 32;
	RING_IDX start = 12;
	struct mbuf *mbuf;

	mbuf = FUNC1(NULL, size, M_WAITOK, MT_DATA);
	mbuf->m_flags |= M_PKTHDR;
	mbuf->m_pkthdr.len = size;
	mbuf->m_len = size;

	FUNC3(mbuf, &pkt, start, free_slots);
	FUNC0(FUNC4(&pkt));
	FUNC0(pkt.size == size);
	FUNC0(pkt.car_size == size);
	FUNC0(! (pkt.flags &
	      (NETRXF_more_data | NETRXF_extra_info)));
	FUNC0(pkt.list_len == 1);
	FUNC0(pkt.car == start);

	FUNC2(&mbuf);
}