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
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC3 (char*,char*) ; 

int
FUNC4(device_t dev, device_t child)
{
	int	retval = 0;

	if (FUNC0(child)) {
		retval += FUNC2(child, "<%s>", FUNC0(child));
	} else {
		retval += FUNC3("%s", FUNC1(child));
	}

	return (retval);
}