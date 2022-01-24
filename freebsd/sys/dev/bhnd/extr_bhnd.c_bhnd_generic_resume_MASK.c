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

/* Variables and functions */
 int /*<<< orphan*/  BHND_DEVICE_ORDER_ATTACH ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

int
FUNC5(device_t dev)
{
	device_t	*devs;
	int		 ndevs;
	int		 error;

	if (!FUNC4(dev))
		return (EBUSY);

	/* Fetch children in attach order */
	error = FUNC2(dev, &devs, &ndevs,
	    BHND_DEVICE_ORDER_ATTACH);
	if (error)
		return (error);

	/* Perform resume */
	for (int i = 0; i < ndevs; i++) {
		device_t child = devs[i];

		/* Terminate on first error */
		if ((error = FUNC0(FUNC3(child), child)))
			goto cleanup;
	}

cleanup:
	FUNC1(devs);
	return (error);
}