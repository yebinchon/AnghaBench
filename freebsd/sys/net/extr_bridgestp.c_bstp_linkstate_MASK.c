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
struct bstp_port {int /*<<< orphan*/  bp_active; struct bstp_state* bp_bs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct bstp_state*,struct bstp_port*) ; 

void
FUNC4(struct bstp_port *bp)
{
	struct bstp_state *bs = bp->bp_bs;

	if (!bp->bp_active)
		return;

	FUNC2(bp, 0);
	FUNC0(bs);
	FUNC3(bs, bp);
	FUNC1(bs);
}