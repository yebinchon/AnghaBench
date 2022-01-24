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
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 

__attribute__((used)) static void
FUNC3(device_t dev)
{
	int i;

	FUNC0(dev, "PCI Configuration space:");
	for (i = 0; i < 256; i += 4) {
		if (i % 16 == 0)
			FUNC2("\n  0x%02x: ", i);
		FUNC2("0x%08x ", FUNC1(dev, i, 4));
	}
	FUNC2("\n");
}