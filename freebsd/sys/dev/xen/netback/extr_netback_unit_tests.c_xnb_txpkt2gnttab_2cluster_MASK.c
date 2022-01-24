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
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int uint16_t ;
struct xnb_pkt {int dummy; } ;
struct netif_tx_request {int size; int gref; scalar_t__ offset; scalar_t__ flags; } ;
struct mbuf {struct mbuf* m_next; } ;
struct TYPE_14__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct TYPE_13__ {int /*<<< orphan*/  req_cons; } ;
struct TYPE_10__ {int offset; } ;
struct TYPE_9__ {scalar_t__ offset; } ;
struct TYPE_12__ {int len; TYPE_2__ source; TYPE_1__ dest; } ;
struct TYPE_11__ {TYPE_4__* gnttab; TYPE_5__ txb; int /*<<< orphan*/  ifp; TYPE_7__ txf; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_FIRST_RESERVED ; 
 int MCLBYTES ; 
 int FUNC0 (struct mbuf*) ; 
 struct netif_tx_request* FUNC1 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct mbuf*) ; 
 int /*<<< orphan*/  FUNC5 (struct mbuf*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vm_offset_t ; 
 struct mbuf* FUNC7 (struct xnb_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct xnb_pkt*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC9 (struct xnb_pkt*,struct mbuf*,TYPE_4__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_3__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC10(char *buffer, size_t buflen)
{
	int n_entries;
	struct xnb_pkt pkt;
	struct mbuf *pMbuf;
	const uint16_t data_this_transaction = (MCLBYTES*2) + 1;

	struct netif_tx_request *req = FUNC1(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->flags = 0;
	req->size = data_this_transaction;
	req->gref = 8;
	req->offset = 0;
	xnb_unit_pvt.txf.req_prod_pvt++;

	FUNC2(&xnb_unit_pvt.txf);
	FUNC8(&pkt, &xnb_unit_pvt.txb, xnb_unit_pvt.txb.req_cons);

	pMbuf = FUNC7(&pkt, xnb_unit_pvt.ifp);
	FUNC3(pMbuf != NULL);
	if (pMbuf == NULL)
		return;

	n_entries = FUNC9(&pkt, pMbuf, xnb_unit_pvt.gnttab,
	    &xnb_unit_pvt.txb, DOMID_FIRST_RESERVED);

	if (FUNC0(pMbuf) == MCLBYTES) {
		/* there should be three mbufs and three gnttab entries */
		FUNC3(n_entries == 3);
		FUNC3(xnb_unit_pvt.gnttab[0].len == MCLBYTES);
		FUNC3(
		    xnb_unit_pvt.gnttab[0].dest.offset == FUNC6(
		      FUNC5(pMbuf, vm_offset_t)));
		FUNC3(xnb_unit_pvt.gnttab[0].source.offset == 0);

		FUNC3(xnb_unit_pvt.gnttab[1].len == MCLBYTES);
		FUNC3(
		    xnb_unit_pvt.gnttab[1].dest.offset == FUNC6(
		      FUNC5(pMbuf->m_next, vm_offset_t)));
		FUNC3(xnb_unit_pvt.gnttab[1].source.offset == MCLBYTES);

		FUNC3(xnb_unit_pvt.gnttab[2].len == 1);
		FUNC3(
		    xnb_unit_pvt.gnttab[2].dest.offset == FUNC6(
		      FUNC5(pMbuf->m_next, vm_offset_t)));
		FUNC3(xnb_unit_pvt.gnttab[2].source.offset == 2 *
			    MCLBYTES);
	} else if (FUNC0(pMbuf) == 2 * MCLBYTES) {
		/* there should be two mbufs and two gnttab entries */
		FUNC3(n_entries == 2);
		FUNC3(xnb_unit_pvt.gnttab[0].len == 2 * MCLBYTES);
		FUNC3(
		    xnb_unit_pvt.gnttab[0].dest.offset == FUNC6(
		      FUNC5(pMbuf, vm_offset_t)));
		FUNC3(xnb_unit_pvt.gnttab[0].source.offset == 0);

		FUNC3(xnb_unit_pvt.gnttab[1].len == 1);
		FUNC3(
		    xnb_unit_pvt.gnttab[1].dest.offset == FUNC6(
		      FUNC5(pMbuf->m_next, vm_offset_t)));
		FUNC3(
		    xnb_unit_pvt.gnttab[1].source.offset == 2 * MCLBYTES);

	} else {
		/* should never get here */
		FUNC3(0);
	}
	FUNC4(pMbuf);
}