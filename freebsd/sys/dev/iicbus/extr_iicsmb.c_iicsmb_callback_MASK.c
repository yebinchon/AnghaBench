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
 int EINVAL ; 
#define  SMB_RELEASE_BUS 129 
#define  SMB_REQUEST_BUS 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC3(device_t dev, int index, void *data)
{
	device_t parent = FUNC0(dev);
	int error = 0;
	int how;

	switch (index) {
	case SMB_REQUEST_BUS:
		/* request underlying iicbus */
		how = *(int *)data;
		error = FUNC2(parent, dev, how);
		break;

	case SMB_RELEASE_BUS:
		/* release underlying iicbus */
		error = FUNC1(parent, dev);
		break;

	default:
		error = EINVAL;
	}

	return (error);
}