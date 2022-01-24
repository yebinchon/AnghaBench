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
 int ENXIO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	char *s = NULL;

	switch (FUNC2(dev)) {
	case 0x70021102:
		s = "Creative EMU10K1 Joystick";
		FUNC0(dev);
		break;
	case 0x70031102:
		s = "Creative EMU10K2 Joystick";
		FUNC0(dev);
		break;
	}

	if (s) FUNC1(dev, s);
	return s ? -1000 : ENXIO;
}