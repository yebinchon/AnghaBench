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
typedef  int /*<<< orphan*/  uint16_t ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  PCI_VENDOR_PLX 128 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(device_t bus, device_t child)
{
	int i;
	uint16_t reg;

	switch (FUNC3(bus)) {
	/*
	 * For PLX PEX 8532 issue 64 TLPs to the child from the downstream
	 * port to the child device in order to work around a hardware bug.
	 */
	case PCI_VENDOR_PLX:
		for (i = 0, reg = 0; i < 64; i++)
			reg |= FUNC2(child);
		break;
	}

	FUNC0(FUNC1(bus), child);
}