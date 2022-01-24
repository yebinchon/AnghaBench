#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct et_rxdesc {int /*<<< orphan*/  rd_ctrl; } ;
struct et_rxbuf_data {TYPE_1__* rbd_ring; } ;
struct TYPE_2__ {int /*<<< orphan*/  rr_dmap; int /*<<< orphan*/  rr_dtag; struct et_rxdesc* rr_desc; } ;

/* Variables and functions */
 int /*<<< orphan*/  BUS_DMASYNC_PREWRITE ; 
 int ET_RDCTRL_BUFIDX_MASK ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 

__attribute__((used)) static void
FUNC2(struct et_rxbuf_data *rbd, int buf_idx)
{
	struct et_rxdesc *desc;

	desc = &rbd->rbd_ring->rr_desc[buf_idx];
	desc->rd_ctrl = FUNC1(buf_idx & ET_RDCTRL_BUFIDX_MASK);
	FUNC0(rbd->rbd_ring->rr_dtag, rbd->rbd_ring->rr_dmap,
	    BUS_DMASYNC_PREWRITE);
}