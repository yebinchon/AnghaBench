#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  TYPE_2__* iflib_rxq_t ;
typedef  TYPE_3__* iflib_fl_t ;
typedef  TYPE_4__* if_ctx_t ;
struct TYPE_12__ {scalar_t__ ifc_rx_mbuf_sz; scalar_t__ ifc_max_fl_buf_size; } ;
struct TYPE_11__ {scalar_t__ ifl_credits; scalar_t__ ifl_buf_size; TYPE_1__* ifl_ifdi; scalar_t__ ifl_size; int /*<<< orphan*/  ifl_zone; int /*<<< orphan*/  ifl_cltype; int /*<<< orphan*/  ifl_rx_bitmap; TYPE_2__* ifl_rxq; } ;
struct TYPE_10__ {TYPE_4__* ifr_ctx; } ;
struct TYPE_9__ {int /*<<< orphan*/  idi_map; int /*<<< orphan*/  idi_tag; } ;

/* Variables and functions */
 int BUS_DMASYNC_PREREAD ; 
 int BUS_DMASYNC_PREWRITE ; 
 int ENOBUFS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_4__*,TYPE_3__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (int,scalar_t__) ; 

__attribute__((used)) static int
FUNC8(iflib_fl_t fl)
{
	iflib_rxq_t rxq = fl->ifl_rxq;
	if_ctx_t ctx = rxq->ifr_ctx;

	FUNC2(fl->ifl_rx_bitmap, 0, fl->ifl_size - 1);
	/*
	** Free current RX buffer structs and their mbufs
	*/
	FUNC4(fl);
	/* Now replenish the mbufs */
	FUNC0(fl->ifl_credits == 0);
	fl->ifl_buf_size = ctx->ifc_rx_mbuf_sz;
	if (fl->ifl_buf_size > ctx->ifc_max_fl_buf_size)
		ctx->ifc_max_fl_buf_size = fl->ifl_buf_size;
	fl->ifl_cltype = FUNC5(fl->ifl_buf_size);
	fl->ifl_zone = FUNC6(fl->ifl_buf_size);


	/* avoid pre-allocating zillions of clusters to an idle card
	 * potentially speeding up attach
	 */
	FUNC1(ctx, fl, FUNC7(128, fl->ifl_size));
	FUNC0(FUNC7(128, fl->ifl_size) == fl->ifl_credits);
	if (FUNC7(128, fl->ifl_size) != fl->ifl_credits)
		return (ENOBUFS);
	/*
	 * handle failure
	 */
	FUNC0(rxq != NULL);
	FUNC0(fl->ifl_ifdi != NULL);
	FUNC3(fl->ifl_ifdi->idi_tag, fl->ifl_ifdi->idi_map,
	    BUS_DMASYNC_PREREAD | BUS_DMASYNC_PREWRITE);
	return (0);
}