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
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  bhnd_device_order ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 

int
FUNC3(device_t bus, device_t **devlist, int *devcount,
    bhnd_device_order order)
{
	int error;

	/* Fetch device array */
	if ((error = FUNC2(bus, devlist, devcount)))
		return (error);

	/* Perform requested sorting */
	if ((error = FUNC1(*devlist, *devcount, order))) {
		FUNC0(*devlist);
		return (error);
	}

	return (0);
}