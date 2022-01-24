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
struct xenbus_device_ivars {char* xd_node; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct xenbus_device_ivars* FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

int
FUNC4(device_t dev, device_t child)
{
	struct xenbus_device_ivars *ivars = FUNC2(child);
	int	retval = 0;

	retval += FUNC1(dev, child);
	retval += FUNC3(" at %s", ivars->xd_node);
	retval += FUNC0(dev, child);

	return (retval);
}