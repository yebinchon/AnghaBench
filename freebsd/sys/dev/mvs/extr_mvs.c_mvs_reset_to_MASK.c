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
struct mvs_channel {int resetting; int /*<<< orphan*/  reset_timer; int /*<<< orphan*/  sim; } ;
typedef  void* device_t ;

/* Variables and functions */
 int ATA_S_BUSY ; 
 int ATA_S_DRQ ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ bootverbose ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 struct mvs_channel* FUNC1 (void*) ; 
 int /*<<< orphan*/  FUNC2 (void*,char*,...) ; 
 int hz ; 
 int FUNC3 (void*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	device_t dev = arg;
	struct mvs_channel *ch = FUNC1(dev);
	int t;

	if (ch->resetting == 0)
		return;
	ch->resetting--;
	if ((t = FUNC3(dev, 0, ATA_S_BUSY | ATA_S_DRQ, 0)) >= 0) {
		if (bootverbose) {
			FUNC2(dev,
			    "MVS reset: device ready after %dms\n",
			    (310 - ch->resetting) * 100);
		}
		ch->resetting = 0;
		FUNC4(ch->sim, TRUE);
		return;
	}
	if (ch->resetting == 0) {
		FUNC2(dev,
		    "MVS reset: device not ready after 31000ms\n");
		FUNC4(ch->sim, TRUE);
		return;
	}
	FUNC0(&ch->reset_timer, hz / 10);
}