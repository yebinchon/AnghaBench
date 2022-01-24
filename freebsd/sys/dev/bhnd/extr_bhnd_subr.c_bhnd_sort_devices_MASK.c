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
typedef  int bhnd_device_order ;

/* Variables and functions */
#define  BHND_DEVICE_ORDER_ATTACH 129 
#define  BHND_DEVICE_ORDER_DETACH 128 
 int EINVAL ; 
 int FUNC0 (void const*,void const*) ; 
 int FUNC1 (void const*,void const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,size_t,int,int (*) (void const*,void const*)) ; 

int
FUNC4(device_t *devlist, size_t devcount, bhnd_device_order order)
{
	int (*compare)(const void *, const void *);

	switch (order) {
	case BHND_DEVICE_ORDER_ATTACH:
		compare = compare_ascending_probe_order;
		break;
	case BHND_DEVICE_ORDER_DETACH:
		compare = compare_descending_probe_order;
		break;
	default:
		FUNC2("unknown sort order: %d\n", order);
		return (EINVAL);
	}

	FUNC3(devlist, devcount, sizeof(*devlist), compare);
	return (0);
}