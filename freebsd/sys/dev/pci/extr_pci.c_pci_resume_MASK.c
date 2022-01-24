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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  M_TEMP ; 
#define  PCIC_BASEPERIPH 131 
#define  PCIC_BRIDGE 130 
#define  PCIC_DISPLAY 129 
#define  PCIC_MEMORY 128 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

int
FUNC4(device_t dev)
{
	device_t child, *devlist;
	int error, i, numdevs;

	if ((error = FUNC1(dev, &devlist, &numdevs)) != 0)
		return (error);

	/*
	 * Resume critical devices first, then everything else later.
	 */
	for (i = 0; i < numdevs; i++) {
		child = devlist[i];
		switch (FUNC3(child)) {
		case PCIC_DISPLAY:
		case PCIC_MEMORY:
		case PCIC_BRIDGE:
		case PCIC_BASEPERIPH:
			FUNC0(dev, child);
			break;
		}
	}
	for (i = 0; i < numdevs; i++) {
		child = devlist[i];
		switch (FUNC3(child)) {
		case PCIC_DISPLAY:
		case PCIC_MEMORY:
		case PCIC_BRIDGE:
		case PCIC_BASEPERIPH:
			break;
		default:
			FUNC0(dev, child);
		}
	}
	FUNC2(devlist, M_TEMP);
	return (0);
}