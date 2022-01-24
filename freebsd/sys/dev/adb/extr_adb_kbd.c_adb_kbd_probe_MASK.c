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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 scalar_t__ ADB_DEVICE_KEYBOARD ; 
 int ENXIO ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int 
FUNC3(device_t dev) 
{
	uint8_t type;

	type = FUNC1(dev);

	if (type != ADB_DEVICE_KEYBOARD)
		return (ENXIO);

	switch(FUNC0(dev)) {
	case 1:
		FUNC2(dev,"Apple Standard Keyboard");
		break;
	case 2:
		FUNC2(dev,"Apple Extended Keyboard");
		break;
	case 4:
		FUNC2(dev,"Apple ISO Keyboard");
		break;
	case 5:
		FUNC2(dev,"Apple Extended ISO Keyboard");
		break;
	case 8:
		FUNC2(dev,"Apple Keyboard II");
		break;
	case 9:
		FUNC2(dev,"Apple ISO Keyboard II");
		break;
	case 12:
		FUNC2(dev,"PowerBook Keyboard");
		break;
	case 13:
		FUNC2(dev,"PowerBook ISO Keyboard");
		break;
	case 24:
		FUNC2(dev,"PowerBook Extended Keyboard");
		break;
	case 27:
		FUNC2(dev,"Apple Design Keyboard");
		break;
	case 195:
		FUNC2(dev,"PowerBook G3 Keyboard");
		break;
	case 196:
		FUNC2(dev,"iBook Keyboard");
		break;
	default:
		FUNC2(dev,"ADB Keyboard");
		break;
	}

	return (0);
}