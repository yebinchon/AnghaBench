#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_7__ ;
typedef  struct TYPE_15__   TYPE_6__ ;
typedef  struct TYPE_14__   TYPE_5__ ;
typedef  struct TYPE_13__   TYPE_4__ ;
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {int size; int type; } ;
struct TYPE_13__ {TYPE_3__ gso; } ;
struct TYPE_14__ {scalar_t__ flags; scalar_t__ type; TYPE_4__ u; } ;
struct xnb_pkt {int size; int car_size; int flags; int list_len; scalar_t__ car; scalar_t__ cdr; TYPE_5__ extra; } ;
struct netif_tx_request {int flags; int size; } ;
struct TYPE_10__ {int size; scalar_t__ features; void* type; } ;
struct TYPE_11__ {TYPE_1__ gso; } ;
struct netif_extra_info {TYPE_2__ u; scalar_t__ type; scalar_t__ flags; } ;
struct TYPE_16__ {scalar_t__ req_prod_pvt; int /*<<< orphan*/  req_cons; } ;
struct TYPE_15__ {TYPE_7__ txb; TYPE_7__ txf; } ;
typedef  scalar_t__ RING_IDX ;

/* Variables and functions */
 int NETTXF_extra_info ; 
 int NETTXF_more_data ; 
 struct netif_tx_request* FUNC0 (TYPE_7__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_7__*) ; 
 scalar_t__ XEN_NETIF_EXTRA_TYPE_GSO ; 
 void* XEN_NETIF_GSO_TYPE_TCPV4 ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (struct xnb_pkt*) ; 
 int FUNC4 (struct xnb_pkt*,TYPE_7__*,int /*<<< orphan*/ ) ; 
 TYPE_6__ xnb_unit_pvt ; 

__attribute__((used)) static void
FUNC5(char *buffer, size_t buflen)
{
	struct xnb_pkt pkt;
	int num_consumed;
	struct netif_tx_request *req;
	struct netif_extra_info *ext;
	RING_IDX start_idx = xnb_unit_pvt.txf.req_prod_pvt;

	req = FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->flags = NETTXF_extra_info | NETTXF_more_data;
	req->size = 150;
	xnb_unit_pvt.txf.req_prod_pvt++;

	ext = (struct netif_extra_info*) FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	ext->flags = 0;
	ext->type = XEN_NETIF_EXTRA_TYPE_GSO;
	ext->u.gso.size = 250;
	ext->u.gso.type = XEN_NETIF_GSO_TYPE_TCPV4;
	ext->u.gso.features = 0;
	xnb_unit_pvt.txf.req_prod_pvt++;

	req = FUNC0(&xnb_unit_pvt.txf,
	    xnb_unit_pvt.txf.req_prod_pvt);
	req->flags = 0;
	req->size = 50;
	xnb_unit_pvt.txf.req_prod_pvt++;

	FUNC1(&xnb_unit_pvt.txf);

	num_consumed = FUNC4(&pkt, &xnb_unit_pvt.txb,
	                            xnb_unit_pvt.txb.req_cons);
	FUNC2(num_consumed == 3);
	FUNC2(pkt.extra.flags == 0);
	FUNC2(pkt.extra.type == XEN_NETIF_EXTRA_TYPE_GSO);
	FUNC2(pkt.extra.u.gso.size == 250);
	FUNC2(pkt.extra.u.gso.type = XEN_NETIF_GSO_TYPE_TCPV4);
	FUNC2(pkt.size == 150);
	FUNC2(pkt.car_size == 100);
	FUNC2(pkt.flags == NETTXF_extra_info);
	FUNC2(FUNC3(&pkt));
	FUNC2(pkt.list_len == 2);
	FUNC2(pkt.car == start_idx);
	FUNC2(pkt.cdr == start_idx + 2);
	FUNC2(FUNC0(&xnb_unit_pvt.txb, pkt.cdr) == req);
}