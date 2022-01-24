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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC6(device_t dev)
{
	uint32_t val;

	if (FUNC1(dev) == 0 && FUNC3(dev) == 0 &&
	    FUNC2(dev) == 0) {
		val = FUNC4(dev, 0x6c, 4);
		if (val & 0x000e0000) {
			FUNC0(dev, 
			    "correcting nForce2 C1 CPU disconnect hangs\n");
			val &= ~0x000e0000;
			FUNC5(dev, 0x6c, val, 4);
		}
	}
}