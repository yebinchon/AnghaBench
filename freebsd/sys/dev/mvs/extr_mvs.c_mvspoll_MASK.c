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
struct mvs_intr_arg {int cause; int /*<<< orphan*/  arg; } ;
struct mvs_channel {scalar_t__ resetting; scalar_t__ resetpolldiv; int /*<<< orphan*/  dev; int /*<<< orphan*/  reset_timer; } ;
struct cam_sim {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (struct cam_sim*) ; 
 int /*<<< orphan*/  FUNC2 (struct mvs_intr_arg*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct cam_sim *sim)
{
	struct mvs_channel *ch = (struct mvs_channel *)FUNC1(sim);
	struct mvs_intr_arg arg;

	arg.arg = ch->dev;
	arg.cause = 2 | 4; /* XXX */
	FUNC2(&arg);
	if (ch->resetting != 0 &&
	    (--ch->resetpolldiv <= 0 || !FUNC0(&ch->reset_timer))) {
		ch->resetpolldiv = 1000;
		FUNC3(ch->dev);
	}
}