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
struct legacy_device {int lg_pcibus; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 struct legacy_device* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,...) ; 

__attribute__((used)) static int
FUNC3(device_t bus, device_t child)
{
	struct legacy_device *atdev = FUNC0(child);
	int retval = 0;

	retval += FUNC1(bus, child);
	if (atdev->lg_pcibus != -1)
		retval += FUNC2(" pcibus %d", atdev->lg_pcibus);
	retval += FUNC2("\n");

	return (retval);
}