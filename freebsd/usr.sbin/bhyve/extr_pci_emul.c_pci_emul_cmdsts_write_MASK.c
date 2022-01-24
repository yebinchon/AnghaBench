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
struct pci_devinst {int dummy; } ;

/* Variables and functions */
 int FUNC0 (struct pci_devinst*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct pci_devinst*,int,int,int) ; 
 int /*<<< orphan*/  PCIR_COMMAND ; 
 int /*<<< orphan*/  FUNC2 (struct pci_devinst*,int) ; 
 int FUNC3 (struct pci_devinst*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct pci_devinst *pi, int coff, uint32_t new, int bytes)
{
	int rshift;
	uint32_t cmd, old, readonly;

	cmd = FUNC3(pi, PCIR_COMMAND);	/* stash old value */

	/*
	 * From PCI Local Bus Specification 3.0 sections 6.2.2 and 6.2.3.
	 *
	 * XXX Bits 8, 11, 12, 13, 14 and 15 in the status register are
	 * 'write 1 to clear'. However these bits are not set to '1' by
	 * any device emulation so it is simpler to treat them as readonly.
	 */
	rshift = (coff & 0x3) * 8;
	readonly = 0xFFFFF880 >> rshift;

	old = FUNC0(pi, coff, bytes);
	new &= ~readonly;
	new |= (old & readonly);
	FUNC1(pi, coff, new, bytes);			/* update config */

	FUNC2(pi, cmd);
}