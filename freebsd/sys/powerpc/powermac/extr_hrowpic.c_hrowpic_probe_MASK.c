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
 scalar_t__ FUNC2 (char const*,char*) ; 

__attribute__((used)) static int
FUNC3(device_t dev)
{
	const char *type = FUNC1(dev);

	/*
	 * OpenPIC cells have a type of "open-pic", so this
	 * is sufficient to identify a Heathrow cell
	 */
	if (FUNC2(type, "interrupt-controller") != 0)
		return (ENXIO);

	/*
	 * The description was already printed out in the nexus
	 * probe, so don't do it again here
	 */
	FUNC0(dev, "Heathrow MacIO interrupt controller");
	return (0);
}