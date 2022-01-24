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
struct ahci_channel {int resetting; int /*<<< orphan*/  reset_timer; int /*<<< orphan*/  sim; } ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (struct ahci_channel*) ; 
 int /*<<< orphan*/  FUNC1 (struct ahci_channel*,int) ; 
 scalar_t__ FUNC2 (struct ahci_channel*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int hz ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct ahci_channel *ch = arg;

	if (ch->resetting == 0)
		return;
	ch->resetting--;
	if (FUNC2(ch, ch->resetting == 0 ? -1 : 0,
	    (310 - ch->resetting) * 100) == 0) {
		ch->resetting = 0;
		FUNC1(ch, 1);
		FUNC4(ch->sim, TRUE);
		return;
	}
	if (ch->resetting == 0) {
		FUNC0(ch);
		FUNC1(ch, 1);
		FUNC4(ch->sim, TRUE);
		return;
	}
	FUNC3(&ch->reset_timer, hz / 10);
}