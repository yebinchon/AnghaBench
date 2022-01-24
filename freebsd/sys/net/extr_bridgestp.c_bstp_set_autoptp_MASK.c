#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct bstp_state {int dummy; } ;
struct bstp_port {scalar_t__ bp_role; int /*<<< orphan*/  bp_flags; int /*<<< orphan*/  bp_mediatask; struct bstp_state* bp_bs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int /*<<< orphan*/  BSTP_PORT_AUTOPTP ; 
 scalar_t__ BSTP_ROLE_DISABLED ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  taskqueue_swi ; 

int
FUNC3(struct bstp_port *bp, int set)
{
	struct bstp_state *bs = bp->bp_bs;

	FUNC0(bs);
	if (set) {
		bp->bp_flags |= BSTP_PORT_AUTOPTP;
		if (bp->bp_role != BSTP_ROLE_DISABLED)
			FUNC2(taskqueue_swi, &bp->bp_mediatask);
	} else
		bp->bp_flags &= ~BSTP_PORT_AUTOPTP;
	FUNC1(bs);
	return (0);
}