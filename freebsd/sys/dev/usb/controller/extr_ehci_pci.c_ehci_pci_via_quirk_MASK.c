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
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int,int) ; 

__attribute__((used)) static void
FUNC5(device_t self)
{
	uint32_t val;

	if ((FUNC1(self) == 0x3104) && 
	    ((FUNC2(self) & 0xf0) == 0x60)) {
		/* Correct schedule sleep time to 10us */
		val = FUNC3(self, 0x4b, 1);
		if (val & 0x20)
			return;
		val |= 0x20;
		FUNC4(self, 0x4b, val, 1);
		FUNC0(self, "VIA-quirk applied\n");
	}
}