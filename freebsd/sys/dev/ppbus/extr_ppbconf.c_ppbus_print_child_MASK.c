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
struct ppb_device {scalar_t__ flags; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,scalar_t__) ; 

__attribute__((used)) static int
FUNC4(device_t bus, device_t dev)
{
	struct ppb_device *ppbdev;
	int retval;

	retval = FUNC1(bus, dev);

	ppbdev = (struct ppb_device *)FUNC2(dev);

	if (ppbdev->flags != 0)
		retval += FUNC3(" flags 0x%x", ppbdev->flags);

	retval += FUNC0(bus, dev);

	return (retval);
}