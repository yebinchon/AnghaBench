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
struct bstp_port {int bp_active; struct bstp_state* bp_bs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (struct bstp_port*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bp_next ; 
 int /*<<< orphan*/  FUNC4 (struct bstp_state*,struct bstp_port*) ; 
 int /*<<< orphan*/  FUNC5 (struct bstp_state*) ; 

void
FUNC6(struct bstp_port *bp)
{
	struct bstp_state *bs = bp->bp_bs;

	FUNC2(bp->bp_active == 1, ("not a bstp member"));

	FUNC0(bs);
	FUNC4(bs, bp);
	FUNC3(bp, bp_next);
	bp->bp_active = 0;
	FUNC5(bs);
	FUNC1(bs);
}