#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gpio_handle_t ;
struct TYPE_4__ {int g_pin; char* g_name; int /*<<< orphan*/  g_caps; int /*<<< orphan*/  g_flags; } ;
typedef  TYPE_1__ gpio_config_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ,TYPE_1__**) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,...) ; 

__attribute__((used)) static void
FUNC7(gpio_handle_t handle, int verbose)
{
	int i, maxpin, pinv;
	gpio_config_t *cfgs;
	gpio_config_t *pin;

	maxpin = FUNC3(handle, &cfgs);
	if (maxpin < 0) {
		FUNC4("gpio_pin_list");
		FUNC0(1);
	}

	for (i = 0; i <= maxpin; i++) {
		pin = cfgs + i;
		pinv = FUNC2(handle, pin->g_pin);
		FUNC6("pin %02d:\t%d\t%s", pin->g_pin, pinv,
		    pin->g_name);

		FUNC5(pin->g_flags);

		if (verbose) {
			FUNC6(", caps:");
			FUNC5(pin->g_caps);
		}
		FUNC6("\n");
	}
	FUNC1(cfgs);
}