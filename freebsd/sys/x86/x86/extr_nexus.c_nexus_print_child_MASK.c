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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (char*,...) ; 

__attribute__((used)) static int
FUNC4(device_t bus, device_t child)
{
	int retval = 0;

	retval += FUNC0(bus, child);
	retval += FUNC2(child);
	if (FUNC1(child))
		retval += FUNC3(" flags %#x", FUNC1(child));
	retval += FUNC3("\n");

	return (retval);
}