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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  PCIR_INTLINE ; 
 int /*<<< orphan*/  PCI_CBMEM ; 
 scalar_t__ PCI_POWERSTATE_D0 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC5(device_t self)
{
	uint32_t reg;
	uint32_t int_line;

	if (FUNC1(self) != PCI_POWERSTATE_D0) {
		FUNC0(self, "chip is in D%d mode "
		    "-- setting to D0\n", FUNC1(self));
		reg = FUNC2(self, PCI_CBMEM, 4);
		int_line = FUNC2(self, PCIR_INTLINE, 4);
		FUNC3(self, PCI_POWERSTATE_D0);
		FUNC4(self, PCI_CBMEM, reg, 4);
		FUNC4(self, PCIR_INTLINE, int_line, 4);
	}
	return (0);
}