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
typedef  scalar_t__ phandle_t ;
typedef  int /*<<< orphan*/  gpio_pin_t ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *,scalar_t__,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (scalar_t__,char*,char*,int*) ; 

int
FUNC3(device_t consumer, phandle_t node,
    char *name, gpio_pin_t *pin)
{
	int rv, idx;

	FUNC0(consumer != NULL && node > 0,
	    ("both consumer and node required"));

	rv = FUNC2(node, "gpio-names", name, &idx);
	if (rv != 0)
		return (rv);
	return (FUNC1(consumer, node, idx, pin));
}