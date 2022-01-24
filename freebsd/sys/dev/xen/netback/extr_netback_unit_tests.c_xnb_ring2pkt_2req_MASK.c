#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct xnb_pkt {int size; int car_size; scalar_t__ flags; int list_len; scalar_t__ car; scalar_t__ cdr; } ;
struct netif_tx_request {int size; scalar_t__ flags; } ;
struct TYPE_7__ {scalar_t__ req_prod_pvt; } ;
struct TYPE_6__ {int /*<<< orphan*/  req_cons; } ;
struct TYPE_5__ {TYPE_2__ txb; TYPE_3__ txf; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 scalar_t__ NETTXF_more_data ; 
 struct netif_tx_request* FUNC0 (TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct xnb_pkt*) ; 
 int FUNC4 (struct xnb_pkt*,TYPE_2__*,int /*<<< orphan*/ ) ; 
 TYPE_1__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen)
{
	struct xnb_pkt pkt;
	int num_consumed;
	struct netif_tx_request *req;
	RING_IDX start_idx = xnb_unit_pvt.txf.req_prod_pvt;

	req = FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->flags = NETTXF_more_data;
	req->size = 100;
	xnb_unit_pvt.txf.req_prod_pvt++;

	req = FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->flags = 0;
	req->size = 40;
	xnb_unit_pvt.txf.req_prod_pvt++;

	FUNC1(&xnb_unit_pvt.txf);

	num_consumed = FUNC4(&pkt, &xnb_unit_pvt.txb,
	                            xnb_unit_pvt.txb.req_cons);
	FUNC2(num_consumed == 2);
	FUNC2(pkt.size == 100);
	FUNC2(pkt.car_size == 60);
	FUNC2(pkt.flags == 0);
	FUNC2(FUNC3(&pkt));
	FUNC2(pkt.list_len == 2);
	FUNC2(pkt.car == start_idx);
	FUNC2(pkt.cdr == start_idx + 1);
}