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
struct mvs_channel {TYPE_1__* slot; int /*<<< orphan*/  mtx; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_2__ {scalar_t__ state; } ;

/* Variables and functions */
 int /*<<< orphan*/  MA_OWNED ; 
 int /*<<< orphan*/  MVS_ERR_TIMEOUT ; 
 int MVS_MAX_SLOTS ; 
 scalar_t__ MVS_SLOT_RUNNING ; 
 struct mvs_channel* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	struct mvs_channel *ch = FUNC0(dev);
	int i;

	FUNC1(&ch->mtx, MA_OWNED);
	/* Handle the rest of commands. */
	for (i = 0; i < MVS_MAX_SLOTS; i++) {
		/* Do we have a running request on slot? */
		if (ch->slot[i].state < MVS_SLOT_RUNNING)
			continue;
		FUNC2(&ch->slot[i], MVS_ERR_TIMEOUT);
	}
}