#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_7__ ;
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct xnb_pkt {int dummy; } ;
struct netif_rx_request {int gref; } ;
struct TYPE_8__ {size_t len; } ;
struct mbuf {size_t m_len; TYPE_1__ m_pkthdr; int /*<<< orphan*/  m_flags; } ;
struct TYPE_12__ {scalar_t__ offset; scalar_t__ domid; } ;
struct TYPE_10__ {scalar_t__ gmfn; } ;
struct TYPE_11__ {scalar_t__ domid; scalar_t__ offset; TYPE_3__ u; } ;
struct TYPE_14__ {size_t len; int flags; TYPE_5__ dest; TYPE_4__ source; } ;
struct TYPE_9__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct TYPE_13__ {TYPE_7__* gnttab; int /*<<< orphan*/  rxb; TYPE_2__ txf; int /*<<< orphan*/  rxf; } ;
typedef  int RING_IDX ;

/* Variables and functions */
 scalar_t__ DOMID_FIRST_RESERVED ; 
 scalar_t__ DOMID_SELF ; 
 int GNTCOPY_dest_gref ; 
 int /*<<< orphan*/  MT_DATA ; 
 int /*<<< orphan*/  M_PKTHDR ; 
 int /*<<< orphan*/  M_WAITOK ; 
 struct netif_rx_request* FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 struct mbuf* FUNC2 (int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_offset_t ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,struct xnb_pkt*,int,int) ; 
 int FUNC8 (struct xnb_pkt*,struct mbuf*,TYPE_7__*,int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_6__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC9(char *buffer, size_t buflen) {
	struct xnb_pkt pkt;
	int nr_entries;
	size_t size = 128;
	int free_slots = 60;
	RING_IDX start = 9;
	struct netif_rx_request *req;
	struct mbuf *mbuf;

	mbuf = FUNC2(NULL, size, M_WAITOK, MT_DATA);
	mbuf->m_flags |= M_PKTHDR;
	mbuf->m_pkthdr.len = size;
	mbuf->m_len = size;

	FUNC7(mbuf, &pkt, start, free_slots);
	req = FUNC0(&xnb_unit_pvt.rxf,
			       xnb_unit_pvt.txf.req_prod_pvt);
	req->gref = 7;

	nr_entries = FUNC8(&pkt, mbuf, xnb_unit_pvt.gnttab,
				      &xnb_unit_pvt.rxb, DOMID_FIRST_RESERVED);

	FUNC1(nr_entries == 1);
	FUNC1(xnb_unit_pvt.gnttab[0].len == size);
	/* flags should indicate gref's for dest */
	FUNC1(xnb_unit_pvt.gnttab[0].flags & GNTCOPY_dest_gref);
	FUNC1(xnb_unit_pvt.gnttab[0].dest.offset == 0);
	FUNC1(xnb_unit_pvt.gnttab[0].source.domid == DOMID_SELF);
	FUNC1(xnb_unit_pvt.gnttab[0].source.offset == FUNC6(
		   FUNC3(mbuf, vm_offset_t)));
	FUNC1(xnb_unit_pvt.gnttab[0].source.u.gmfn ==
		   FUNC5(FUNC3(mbuf, vm_offset_t)));
	FUNC1(xnb_unit_pvt.gnttab[0].dest.domid == DOMID_FIRST_RESERVED);

	FUNC4(&mbuf);
}