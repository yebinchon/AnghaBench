#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct xnb_pkt {int list_len; int cdr; } ;
struct netif_tx_request {int size; void* flags; } ;
struct TYPE_9__ {unsigned int req_prod_pvt; unsigned int rsp_cons; unsigned int rsp_prod_pvt; unsigned int req_cons; } ;
struct TYPE_8__ {TYPE_3__ txb; TYPE_3__ txf; TYPE_1__* txs; } ;
struct TYPE_7__ {unsigned int req_prod; unsigned int req_event; unsigned int rsp_prod; unsigned int rsp_event; } ;

/* Variables and functions */
 void* NETTXF_more_data ; 
 struct netif_tx_request* FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 unsigned int FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (struct xnb_pkt*) ; 
 int FUNC5 (struct xnb_pkt*,TYPE_3__*,unsigned int) ; 
 TYPE_2__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC6(char *buffer, size_t buflen)
{
	struct xnb_pkt pkt;
	int num_consumed;
	struct netif_tx_request *req;
	unsigned int rsize;

	/*
	 * Manually tweak the ring indices to create a ring with no responses
	 * and the next request slot at position 2 from the end
	 */
	rsize = FUNC2(&xnb_unit_pvt.txf);
	xnb_unit_pvt.txf.req_prod_pvt = rsize - 2;
	xnb_unit_pvt.txf.rsp_cons = rsize - 2;
	xnb_unit_pvt.txs->req_prod = rsize - 2;
	xnb_unit_pvt.txs->req_event = rsize - 1;
	xnb_unit_pvt.txs->rsp_prod = rsize - 2;
	xnb_unit_pvt.txs->rsp_event = rsize - 1;
	xnb_unit_pvt.txb.rsp_prod_pvt = rsize - 2;
	xnb_unit_pvt.txb.req_cons = rsize - 2;

	req = FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->flags = NETTXF_more_data;
	req->size = 550;
	xnb_unit_pvt.txf.req_prod_pvt++;

	req = FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->flags = NETTXF_more_data;
	req->size = 100;
	xnb_unit_pvt.txf.req_prod_pvt++;

	req = FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->flags = 0;
	req->size = 50;
	xnb_unit_pvt.txf.req_prod_pvt++;

	FUNC1(&xnb_unit_pvt.txf);

	num_consumed = FUNC5(&pkt, &xnb_unit_pvt.txb,
	                            xnb_unit_pvt.txb.req_cons);
	FUNC3(num_consumed == 3);
	FUNC3(FUNC4(&pkt));
	FUNC3(pkt.list_len == 3);
	FUNC3(FUNC0(&xnb_unit_pvt.txb, pkt.cdr + 1) == req);
}