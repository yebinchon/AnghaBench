#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_9__ ;
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_5__ ;
typedef  struct TYPE_14__   TYPE_4__ ;
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct xnb_pkt {int dummy; } ;
struct netif_tx_request {scalar_t__ size; int gref; scalar_t__ offset; scalar_t__ flags; } ;
struct TYPE_12__ {scalar_t__ const len; } ;
struct mbuf {int m_len; TYPE_3__* m_next; TYPE_2__ m_pkthdr; } ;
struct TYPE_17__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct TYPE_16__ {int /*<<< orphan*/  req_cons; } ;
struct TYPE_15__ {TYPE_4__* gnttab; TYPE_7__ txb; int /*<<< orphan*/  ifp; TYPE_9__ txf; } ;
struct TYPE_14__ {int /*<<< orphan*/  status; } ;
struct TYPE_13__ {int m_len; TYPE_1__* m_next; } ;
struct TYPE_11__ {int m_len; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_FIRST_RESERVED ; 
 int /*<<< orphan*/  GNTST_okay ; 
 int MCLBYTES ; 
 struct netif_tx_request* FUNC0 (TYPE_9__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf**) ; 
 struct mbuf* FUNC4 (struct xnb_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xnb_pkt*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xnb_pkt*,struct mbuf*,TYPE_4__*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_5__ xnb_unit_pvt ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,TYPE_4__*,int) ; 

__attribute__((used)) static void
FUNC8(char *buffer, size_t buflen)
{
	int i;
	int n_entries;
	struct xnb_pkt pkt;
	struct mbuf *pMbuf;
	const uint16_t data_this_transaction = (MCLBYTES*2) + 1;

	struct netif_tx_request *req = FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->flags = 0;
	req->size = data_this_transaction;
	req->gref = 8;
	req->offset = 0;
	xnb_unit_pvt.txf.req_prod_pvt++;

	FUNC1(&xnb_unit_pvt.txf);
	FUNC5(&pkt, &xnb_unit_pvt.txb, xnb_unit_pvt.txb.req_cons);

	pMbuf = FUNC4(&pkt, xnb_unit_pvt.ifp);
	n_entries = FUNC6(&pkt, pMbuf, xnb_unit_pvt.gnttab,
	    &xnb_unit_pvt.txb, DOMID_FIRST_RESERVED);

	/* Update grant table's status fields */
	for (i = 0; i < n_entries; i++) {
		xnb_unit_pvt.gnttab[0].status = GNTST_okay;
	}
	FUNC7(pMbuf, xnb_unit_pvt.gnttab, n_entries);

	if (n_entries == 3) {
		/* there should be three mbufs and three gnttab entries */
		FUNC2(pMbuf->m_pkthdr.len == data_this_transaction);
		FUNC2(pMbuf->m_len == MCLBYTES);
		FUNC2(pMbuf->m_next->m_len == MCLBYTES);
		FUNC2(pMbuf->m_next->m_next->m_len == 1);
	} else if (n_entries == 2) {
		/* there should be two mbufs and two gnttab entries */
		FUNC2(n_entries == 2);
		FUNC2(pMbuf->m_pkthdr.len == data_this_transaction);
		FUNC2(pMbuf->m_len == 2 * MCLBYTES);
		FUNC2(pMbuf->m_next->m_len == 1);
	} else {
		/* should never get here */
		FUNC2(0);
	}
	FUNC3(&pMbuf);
}