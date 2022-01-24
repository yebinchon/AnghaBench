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
struct bios_regs {int ebx; int ecx; int /*<<< orphan*/  eax; } ;
struct TYPE_2__ {int /*<<< orphan*/  ventry; } ;

/* Variables and functions */
 int /*<<< orphan*/  GCODE_SEL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PCIBIOS_ROUTE_INTERRUPT ; 
 TYPE_1__ PCIbios ; 
 int /*<<< orphan*/  SEL_KPL ; 
 int FUNC1 (struct bios_regs*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int
FUNC2(int bus, int device, int func, int pin, int irq)
{
	struct bios_regs args;

	args.eax = PCIBIOS_ROUTE_INTERRUPT;
	args.ebx = (bus << 8) | (device << 3) | func;
	args.ecx = (irq << 8) | (0xa + pin);
	return (FUNC1(&args, PCIbios.ventry, FUNC0(GCODE_SEL, SEL_KPL)));
}