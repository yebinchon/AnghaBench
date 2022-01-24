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
struct gpiokey {int debounce_interval; int /*<<< orphan*/  debounce_callout; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpiokey*) ; 
 int /*<<< orphan*/  FUNC1 (struct gpiokey*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct gpiokey*) ; 
 int /*<<< orphan*/  gpiokey_debounced_intr ; 
 int hz ; 

__attribute__((used)) static void
FUNC4(void *arg)
{
	struct gpiokey *key;
	int debounce_ticks;

	key = arg;

	FUNC0(key);
	debounce_ticks = (hz * key->debounce_interval) / 1000;
	if (debounce_ticks == 0)
		debounce_ticks = 1;
	if (!FUNC2(&key->debounce_callout))
		FUNC3(&key->debounce_callout, debounce_ticks,
		    gpiokey_debounced_intr, key);
	FUNC1(key);
}