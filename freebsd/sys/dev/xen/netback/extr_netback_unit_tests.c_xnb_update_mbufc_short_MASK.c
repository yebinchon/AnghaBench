#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_5__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct xnb_pkt {int dummy; } ;
struct netif_tx_request {size_t size; int gref; int offset; scalar_t__ flags; } ;
struct TYPE_9__ {size_t const len; } ;
struct mbuf {size_t const m_len; TYPE_1__ m_pkthdr; } ;
struct TYPE_13__ {int /*<<< orphan*/  req_prod_pvt; } ;
struct TYPE_12__ {int /*<<< orphan*/  req_cons; } ;
struct TYPE_11__ {TYPE_2__* gnttab; TYPE_5__ txb; int /*<<< orphan*/  ifp; TYPE_7__ txf; } ;
struct TYPE_10__ {int /*<<< orphan*/  status; } ;

/* Variables and functions */
 int /*<<< orphan*/  DOMID_FIRST_RESERVED ; 
 int /*<<< orphan*/  GNTST_okay ; 
 int MINCLSIZE ; 
 struct netif_tx_request* FUNC0 (TYPE_7__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (struct mbuf**) ; 
 struct mbuf* FUNC4 (struct xnb_pkt*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (struct xnb_pkt*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 int FUNC6 (struct xnb_pkt*,struct mbuf*,TYPE_2__*,TYPE_5__*,int /*<<< orphan*/ ) ; 
 TYPE_3__ xnb_unit_pvt ; 
 int /*<<< orphan*/  FUNC7 (struct mbuf*,TYPE_2__*,int) ; 

__attribute__((used)) static void
FUNC8(char *buffer, size_t buflen)
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

	FUNC5(&pkt, &xnb_unit_pvt.txb, xnb_unit_pvt.txb.req_cons);

	pMbuf = FUNC4(&pkt, xnb_unit_pvt.ifp);
	n_entries = FUNC6(&pkt, pMbuf, xnb_unit_pvt.gnttab,
	    &xnb_unit_pvt.txb, DOMID_FIRST_RESERVED);

	/* Update grant table's status fields as the hypervisor call would */
	xnb_unit_pvt.gnttab[0].status = GNTST_okay;

	FUNC7(pMbuf, xnb_unit_pvt.gnttab, n_entries);
	FUNC2(pMbuf->m_len == size);
	FUNC2(pMbuf->m_pkthdr.len == size);
	FUNC3(&pMbuf);
}