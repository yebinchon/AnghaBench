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

/* Variables and functions */
 int /*<<< orphan*/  AR934X_RESET_ETH_SWITCH_ANALOG ; 
 int /*<<< orphan*/  AR934X_RESET_NANDF ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC3(int active)
{
#if 0
	if (active) {
		ar71xx_device_start(AR934X_RESET_NANDF);
		DELAY(100);

		ar71xx_device_start(AR934X_RESET_ETH_SWITCH_ANALOG);
		DELAY(250);
	} else {
		ar71xx_device_stop(AR934X_RESET_ETH_SWITCH_ANALOG);
		DELAY(250);

		ar71xx_device_stop(AR934X_RESET_NANDF);
		DELAY(100);
	}
#endif
}