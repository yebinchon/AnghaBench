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
struct bstp_state {int dummy; } ;
struct TYPE_2__ {scalar_t__ active; } ;
struct bstp_port {int /*<<< orphan*/  bp_flags; TYPE_1__ bp_edge_delay_timer; struct bstp_state* bp_bs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int /*<<< orphan*/  BSTP_PORT_AUTOEDGE ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_state*,struct bstp_port*) ; 

int
FUNC3(struct bstp_port *bp, int set)
{
	struct bstp_state *bs = bp->bp_bs;

	FUNC0(bs);
	if (set) {
		bp->bp_flags |= BSTP_PORT_AUTOEDGE;
		/* we may be able to transition straight to edge */
		if (bp->bp_edge_delay_timer.active == 0)
			FUNC2(bs, bp);
	} else
		bp->bp_flags &= ~BSTP_PORT_AUTOEDGE;
	FUNC1(bs);
	return (0);
}