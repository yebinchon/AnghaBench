#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  kobj_t ;
typedef  TYPE_1__* device_t ;
struct TYPE_11__ {int /*<<< orphan*/  children; scalar_t__ parent; scalar_t__ devclass; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  M_BUS ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  bus_data_devices ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,TYPE_1__*) ; 
 int FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  devlink ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  link ; 

int
FUNC9(device_t dev, device_t child)
{
	int error;
	device_t grandchild;

	FUNC2(("%s from %s", FUNC1(child), FUNC1(dev)));

	/* detach parent before deleting children, if any */
	if ((error = FUNC7(child)) != 0)
		return (error);
	
	/* remove children second */
	while ((grandchild = FUNC3(&child->children)) != NULL) {
		error = FUNC9(child, grandchild);
		if (error)
			return (error);
	}

	if (child->devclass)
		FUNC6(child->devclass, child);
	if (child->parent)
		FUNC0(dev, child);
	FUNC4(&dev->children, child, link);
	FUNC4(&bus_data_devices, child, devlink);
	FUNC8((kobj_t) child, M_BUS);

	FUNC5();
	return (0);
}