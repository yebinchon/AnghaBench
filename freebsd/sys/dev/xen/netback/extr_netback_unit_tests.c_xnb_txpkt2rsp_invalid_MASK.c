#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_6__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint16_t ;
struct xnb_pkt {int dummy; } ;
struct netif_tx_response {int id; scalar_t__ status; } ;
struct netif_tx_request {int size; int id; int /*<<< orphan*/  flags; } ;
struct TYPE_10__ {int type; scalar_t__ flags; } ;
typedef  TYPE_2__ netif_extra_info_t ;
struct TYPE_13__ {scalar_t__ rsp_cons; int /*<<< orphan*/  req_prod_pvt; } ;
struct TYPE_12__ {scalar_t__ rsp_prod_pvt; int /*<<< orphan*/  req_cons; } ;
struct TYPE_11__ {TYPE_6__ txf; TYPE_4__ txb; TYPE_1__* txs; } ;
struct TYPE_9__ {scalar_t__ req_prod; } ;

/* Variables and functions */
 scalar_t__ NETIF_RSP_ERROR ; 
 scalar_t__ NETIF_RSP_NULL ; 
 int /*<<< orphan*/  NETTXF_extra_info ; 
 struct netif_tx_request* FUNC0 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 struct netif_tx_response* FUNC1 (TYPE_4__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (struct xnb_pkt*) ; 
 scalar_t__ FUNC5 (struct xnb_pkt*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct xnb_pkt*,TYPE_4__*,int /*<<< orphan*/ ) ; 
 TYPE_3__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC7(char *buffer, size_t buflen)
{
	uint16_t num_consumed;
	struct xnb_pkt pkt;
	struct netif_tx_request *req;
	netif_extra_info_t *ext;
	struct netif_tx_response *rsp;

	req = FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->size = 1000;
	req->flags = NETTXF_extra_info;
	req->id = 69;
	xnb_unit_pvt.txf.req_prod_pvt++;

	ext = (netif_extra_info_t*) FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	ext->type = 0xFF;	/* Invalid extra type */
	ext->flags = 0;
	xnb_unit_pvt.txf.req_prod_pvt++;

	FUNC2(&xnb_unit_pvt.txf);

	num_consumed = FUNC5(&pkt, &xnb_unit_pvt.txb,
	                            xnb_unit_pvt.txb.req_cons);
	xnb_unit_pvt.txb.req_cons += num_consumed;
	FUNC3(! FUNC4(&pkt));

	FUNC6(&pkt, &xnb_unit_pvt.txb, 0);

	FUNC3(
	    xnb_unit_pvt.txb.rsp_prod_pvt == xnb_unit_pvt.txs->req_prod);

	rsp = FUNC1(&xnb_unit_pvt.txb, xnb_unit_pvt.txf.rsp_cons);
	FUNC3(rsp->id == req->id);
	FUNC3(rsp->status == NETIF_RSP_ERROR);

	rsp = FUNC1(&xnb_unit_pvt.txb,
	    xnb_unit_pvt.txf.rsp_cons + 1);
	FUNC3(rsp->status == NETIF_RSP_NULL);
}