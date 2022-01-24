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
 scalar_t__ FUNC3 (char const*,char*) ; 

__attribute__((used)) static int
FUNC4(device_t dev)
{
	const char *name, *compat;

	/* Make sure we're a network driver */
	name = FUNC2(dev);
	if (name == NULL)
		return (ENXIO);

	if (FUNC3(name, "radio") != 0) {
		return ENXIO;
	}
	compat = FUNC1(dev);
	if (FUNC3(compat, "wireless") != 0) {
		return ENXIO;
	}

	FUNC0(dev, "Apple Airport");
	return 0;
}