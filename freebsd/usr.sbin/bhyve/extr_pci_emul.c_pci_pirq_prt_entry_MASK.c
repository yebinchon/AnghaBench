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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (int) ; 

__attribute__((used)) static void
FUNC3(int bus, int slot, int pin, int pirq_pin, int ioapic_irq,
    void *arg)
{
	char *name;

	name = FUNC2(pirq_pin);
	if (name == NULL)
		return;
	FUNC0("  Package ()");
	FUNC0("  {");
	FUNC0("    0x%X,", slot << 16 | 0xffff);
	FUNC0("    0x%02X,", pin - 1);
	FUNC0("    %s,", name);
	FUNC0("    0x00");
	FUNC0("  },");
	FUNC1(name);
}