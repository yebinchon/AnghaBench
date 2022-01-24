#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u_int16_t ;
struct bios_regs {int edx; int ebx; int /*<<< orphan*/  eax; } ;
struct TYPE_2__ {scalar_t__ ventry; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCODE_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIBIOS_BIOS_PRESENT ; 
 TYPE_1__ PCIbios ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SEL_KPL ; 
 scalar_t__ FUNC2 (struct bios_regs*,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static u_int16_t
FUNC3(void)
{
	struct bios_regs args;

	if (PCIbios.ventry == 0) {
		FUNC1(("pcibios: No call entry point\n"));
		return (0);
	}
	args.eax = PCIBIOS_BIOS_PRESENT;
	if (FUNC2(&args, PCIbios.ventry, FUNC0(GCODE_SEL, SEL_KPL))) {
		FUNC1(("pcibios: BIOS_PRESENT call failed\n"));
		return (0);
	}
	if (args.edx != 0x20494350) {
		FUNC1(("pcibios: BIOS_PRESENT didn't return 'PCI ' in edx\n"));
		return (0);
	}
	return (args.ebx & 0xffff);
}