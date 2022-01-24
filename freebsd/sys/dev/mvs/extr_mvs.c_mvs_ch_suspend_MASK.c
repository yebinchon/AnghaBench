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
struct mvs_channel {int /*<<< orphan*/  mtx; int /*<<< orphan*/  sim; int /*<<< orphan*/  reset_timer; scalar_t__ resetting; scalar_t__ oslots; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PRIBIO ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 struct mvs_channel* FUNC1 (int /*<<< orphan*/ ) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC2 (struct mvs_channel*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC8(device_t dev)
{
	struct mvs_channel *ch = FUNC1(dev);

	FUNC3(&ch->mtx);
	FUNC6(ch->sim, 1);
	while (ch->oslots)
		FUNC2(ch, &ch->mtx, PRIBIO, "mvssusp", hz/100);
	/* Forget about reset. */
	if (ch->resetting) {
		ch->resetting = 0;
		FUNC0(&ch->reset_timer);
		FUNC7(ch->sim, TRUE);
	}
	FUNC5(dev);
	FUNC4(&ch->mtx);
	return (0);
}