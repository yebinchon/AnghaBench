#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_8__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct xnb_pkt {int dummy; } ;
struct netif_tx_request {size_t size; int gref; int offset; scalar_t__ flags; } ;
struct mbuf {int dummy; } ;
struct TYPE_16__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct TYPE_15__ {int /*<<< orphan*/  req_cons; } ;
struct TYPE_11__ {scalar_t__ gmfn; } ;
struct TYPE_12__ {scalar_t__ offset; scalar_t__ domid; TYPE_2__ u; } ;
struct TYPE_10__ {int offset; scalar_t__ domid; } ;
struct TYPE_14__ {size_t const len; int flags; TYPE_3__ dest; TYPE_1__ source; } ;
struct TYPE_13__ {TYPE_5__* gnttab; TYPE_6__ txb; int /*<<< orphan*/  ifp; TYPE_8__ txf; } ;

/* Variables and functions */
 scalar_t__ DOMID_FIRST_RESERVED ; 
 scalar_t__ DOMID_SELF ; 
 int GNTCOPY_source_gref ; 
 int MINCLSIZE ; 
 struct netif_tx_request* FUNC0 (TYPE_8__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_8__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf**) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_offset_t ; 
 struct mbuf* FUNC7 (struct xnb_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xnb_pkt*,TYPE_6__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct xnb_pkt*,struct mbuf*,TYPE_5__*,TYPE_6__*,scalar_t__) ; 
 TYPE_4__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC10(char *buffer, size_t buflen)
{
	const size_t size = MINCLSIZE - 1;
	int n_entries;
	struct xnb_pkt pkt;
	struct mbuf *pMbuf;

	struct netif_tx_request *req = FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->flags = 0;
	req->size = size;
	req->gref = 7;
	req->offset = 17;
	xnb_unit_pvt.txf.req_prod_pvt++;

	FUNC1(&xnb_unit_pvt.txf);

	FUNC8(&pkt, &xnb_unit_pvt.txb, xnb_unit_pvt.txb.req_cons);

	pMbuf = FUNC7(&pkt, xnb_unit_pvt.ifp);
	n_entries = FUNC9(&pkt, pMbuf, xnb_unit_pvt.gnttab,
	    &xnb_unit_pvt.txb, DOMID_FIRST_RESERVED);
	FUNC2(n_entries == 1);
	FUNC2(xnb_unit_pvt.gnttab[0].len == size);
	/* flags should indicate gref's for source */
	FUNC2(xnb_unit_pvt.gnttab[0].flags & GNTCOPY_source_gref);
	FUNC2(xnb_unit_pvt.gnttab[0].source.offset == req->offset);
	FUNC2(xnb_unit_pvt.gnttab[0].source.domid == DOMID_SELF);
	FUNC2(xnb_unit_pvt.gnttab[0].dest.offset == FUNC6(
	      FUNC3(pMbuf, vm_offset_t)));
	FUNC2(xnb_unit_pvt.gnttab[0].dest.u.gmfn ==
		FUNC5(FUNC3(pMbuf, vm_offset_t)));
	FUNC2(xnb_unit_pvt.gnttab[0].dest.domid == DOMID_FIRST_RESERVED);
	FUNC4(&pMbuf);
}