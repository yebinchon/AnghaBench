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
struct bstp_state {int bs_running; int /*<<< orphan*/  bs_bstpcallout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC1 (struct bstp_state*) ; 
 int /*<<< orphan*/  FUNC2 (struct bstp_state*) ; 
 int /*<<< orphan*/  bstp_tick ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct bstp_state*) ; 
 int /*<<< orphan*/  hz ; 

void
FUNC4(struct bstp_state *bs)
{
	FUNC0(bs);
	FUNC3(&bs->bs_bstpcallout, hz, bstp_tick, bs);
	bs->bs_running = 1;
	FUNC2(bs);
	FUNC1(bs);
}