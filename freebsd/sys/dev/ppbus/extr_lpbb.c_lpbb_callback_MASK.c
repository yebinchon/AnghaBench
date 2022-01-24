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
typedef  scalar_t__ caddr_t ;

/* Variables and functions */
 int EINVAL ; 
#define  IIC_RELEASE_BUS 129 
#define  IIC_REQUEST_BUS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC5(device_t dev, int index, caddr_t data)
{
	device_t ppbus = FUNC0(dev);
	int error = 0;
	int how;

	switch (index) {
	case IIC_REQUEST_BUS:
		/* request the ppbus */
		how = *(int *)data;
		FUNC1(ppbus);
		error = FUNC3(ppbus, dev, how);
		FUNC4(ppbus);
		break;

	case IIC_RELEASE_BUS:
		/* release the ppbus */
		FUNC1(ppbus);
		error = FUNC2(ppbus, dev);
		FUNC4(ppbus);
		break;

	default:
		error = EINVAL;
	}

	return (error);
}