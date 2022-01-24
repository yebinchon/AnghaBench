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
typedef  int phandle_t ;
typedef  int /*<<< orphan*/  device_t ;
typedef  int /*<<< orphan*/  control ;

/* Variables and functions */
 int ENXIO ; 
 int FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int,char*,char**,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (char*,char*) ; 

__attribute__((used)) static int
FUNC6(device_t dev)
{
	char		control[8];
	phandle_t	handle;

	handle = FUNC0("mac-io/backlight");

	if (handle == -1)
		return (ENXIO);

	if (FUNC1(handle, "backlight-control", &control, sizeof(control)) < 0)
		return (ENXIO);

	if (FUNC5(control, "ati") != 0 &&
	    (FUNC5(control, "mnca") != 0 ||
	    FUNC4(FUNC2(dev)) != 0x1002))
		return (ENXIO);

	FUNC3(dev, "PowerBook backlight for ATI graphics");

	return (0);
}