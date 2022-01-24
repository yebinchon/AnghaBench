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
typedef  int /*<<< orphan*/  u_int ;
struct ppb_device {char const* name; } ;
typedef  int /*<<< orphan*/ * device_t ;

/* Variables and functions */
 int M_NOWAIT ; 
 int /*<<< orphan*/  M_PPBUSDEV ; 
 int M_ZERO ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,struct ppb_device*) ; 
 struct ppb_device* FUNC2 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static device_t
FUNC3(device_t dev, u_int order, const char *name, int unit)
{
	struct ppb_device *ppbdev;
	device_t child;

	/* allocate ivars for the new ppbus child */
	ppbdev = FUNC2(sizeof(struct ppb_device), M_PPBUSDEV,
		M_NOWAIT | M_ZERO);
	if (!ppbdev)
		return (NULL);

	/* initialize the ivars */
	ppbdev->name = name;

	/* add the device as a child to the ppbus bus with the allocated
	 * ivars */
	child = FUNC0(dev, order, name, unit);
	FUNC1(child, ppbdev);

	return (child);
}