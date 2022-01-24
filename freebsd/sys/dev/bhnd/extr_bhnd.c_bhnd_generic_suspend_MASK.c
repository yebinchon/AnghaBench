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
 int /*<<< orphan*/  BHND_DEVICE_ORDER_DETACH ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int EBUSY ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int
FUNC6(device_t dev)
{
	device_t	*devs;
	int		 ndevs;
	int		 error;

	if (!FUNC5(dev))
		return (EBUSY);

	/* Fetch children in detach order */
	error = FUNC3(dev, &devs, &ndevs,
	    BHND_DEVICE_ORDER_DETACH);
	if (error)
		return (error);

	/* Perform suspend */
	for (int i = 0; i < ndevs; i++) {
		device_t child = devs[i];
		error = FUNC1(FUNC4(child), child);

		/* On error, resume suspended devices and then terminate */
		if (error) {
			for (int j = 0; j < i; j++) {
				FUNC0(FUNC4(devs[j]),
				    devs[j]);
			}

			goto cleanup;
		}
	}

cleanup:
	FUNC2(devs);
	return (error);
}