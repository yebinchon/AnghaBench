#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct xnb_pkt {int dummy; } ;
struct netif_rx_response {scalar_t__ id; scalar_t__ offset; int flags; int status; } ;
struct netif_rx_request {scalar_t__ id; scalar_t__ gref; } ;
struct TYPE_8__ {size_t len; } ;
struct mbuf {size_t m_len; TYPE_2__* m_next; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;
struct TYPE_12__ {scalar_t__ rsp_prod_pvt; scalar_t__ req_cons; } ;
struct TYPE_11__ {TYPE_5__ rxb; int /*<<< orphan*/  gnttab; TYPE_3__* rxs; int /*<<< orphan*/  rxf; } ;
struct TYPE_10__ {scalar_t__ rsp_prod; scalar_t__ req_prod; } ;
struct TYPE_9__ {size_t m_len; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_FIRST_RESERVED ; 
 size_t FUNC0 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  FUNC1 (struct mbuf*) ; 
 int /*<<< orphan*/  M_WAITOK ; 
 int NETRXF_extra_info ; 
 int NETRXF_more_data ; 
 int PAGE_SIZE ; 
 struct netif_rx_request* FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 struct netif_rx_response* FUNC3 (TYPE_5__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 struct mbuf* FUNC5 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct mbuf**) ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,struct xnb_pkt*,scalar_t__,int) ; 
 int FUNC8 (struct xnb_pkt*,struct mbuf*,int /*<<< orphan*/ ,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct xnb_pkt*,int /*<<< orphan*/ ,int,TYPE_5__*) ; 
 TYPE_4__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC10(char *buffer, size_t buflen)
{
	struct xnb_pkt pkt;
	int nr_entries, nr_reqs;
	size_t size = PAGE_SIZE + 100;
	int free_slots = 3;
	uint16_t id1 = 17;
	uint16_t id2 = 37;
	uint16_t gref1 = 24;
	uint16_t gref2 = 34;
	RING_IDX start = 15;
	struct netif_rx_request *req;
	struct netif_rx_response *rsp;
	struct mbuf *mbuf;

	mbuf = FUNC5(NULL, size, M_WAITOK, MT_DATA);
	mbuf->m_flags |= M_PKTHDR;
	mbuf->m_pkthdr.len = size;
	if (mbuf->m_next != NULL) {
		size_t first_len = FUNC0(FUNC1(mbuf), size);
		mbuf->m_len = first_len;
		mbuf->m_next->m_len = size - first_len;

	} else {
		mbuf->m_len = size;
	}

	FUNC7(mbuf, &pkt, start, free_slots);
	req = FUNC2(&xnb_unit_pvt.rxf, start);
	req->gref = gref1;
	req->id = id1;
	req = FUNC2(&xnb_unit_pvt.rxf, start + 1);
	req->gref = gref2;
	req->id = id2;
	xnb_unit_pvt.rxb.req_cons = start;
	xnb_unit_pvt.rxb.rsp_prod_pvt = start;
	xnb_unit_pvt.rxs->req_prod = start + 2;
	xnb_unit_pvt.rxs->rsp_prod = start;

	nr_entries = FUNC8(&pkt, mbuf, xnb_unit_pvt.gnttab,
			&xnb_unit_pvt.rxb, DOMID_FIRST_RESERVED);

	nr_reqs = FUNC9(&pkt, xnb_unit_pvt.gnttab, nr_entries,
	    &xnb_unit_pvt.rxb);

	FUNC4(nr_reqs == 2);
	FUNC4(xnb_unit_pvt.rxb.rsp_prod_pvt == start + 2);
	rsp = FUNC3(&xnb_unit_pvt.rxb, start);
	FUNC4(rsp->id == id1);
	FUNC4(rsp->offset == 0);
	FUNC4((rsp->flags & NETRXF_extra_info) == 0);
	FUNC4(rsp->flags & NETRXF_more_data);
	FUNC4(rsp->status == PAGE_SIZE);

	rsp = FUNC3(&xnb_unit_pvt.rxb, start + 1);
	FUNC4(rsp->id == id2);
	FUNC4(rsp->offset == 0);
	FUNC4((rsp->flags & NETRXF_extra_info) == 0);
	FUNC4(! (rsp->flags & NETRXF_more_data));
	FUNC4(rsp->status == size - PAGE_SIZE);

	FUNC6(&mbuf);
}