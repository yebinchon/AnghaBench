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
struct gpiokey {scalar_t__ keycode; int /*<<< orphan*/  parent_sc; int /*<<< orphan*/  repeat_callout; scalar_t__ autorepeat; int /*<<< orphan*/  repeat_delay; int /*<<< orphan*/  pin; } ;

/* Variables and functions */
 scalar_t__ GPIOKEY_NONE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct gpiokey*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  gpiokey_autorepeat ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,scalar_t__,int) ; 

__attribute__((used)) static void
FUNC5(void *arg)
{
	struct gpiokey *key;
	bool active;

	key = arg;

	if (key->keycode == GPIOKEY_NONE)
		return;

	FUNC3(key->pin, &active);
	if (active) {
		FUNC4(key->parent_sc, key->keycode, 1);
		if (key->autorepeat) {
			FUNC1(&key->repeat_callout, key->repeat_delay,
			    gpiokey_autorepeat, key);
		}
	}
	else {
		if (key->autorepeat &&
		    FUNC0(&key->repeat_callout))
			FUNC2(&key->repeat_callout);
		FUNC4(key->parent_sc, key->keycode, 0);
	}
}