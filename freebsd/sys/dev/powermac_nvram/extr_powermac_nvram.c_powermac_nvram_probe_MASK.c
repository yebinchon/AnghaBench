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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC4 (char const*,char*) ; 

__attribute__((used)) static int
FUNC5(device_t dev)
{
	const char	*type, *compatible;

	type = FUNC2(dev);
	compatible = FUNC1(dev);

	if (type == NULL || compatible == NULL)
		return ENXIO;

	if (FUNC4(type, "nvram") != 0)
		return ENXIO;
	if (FUNC4(compatible, "amd-0137") != 0 &&
	    !FUNC3(dev, "nvram,flash"))
		return ENXIO;

	FUNC0(dev, "Apple NVRAM");
	return 0;
}