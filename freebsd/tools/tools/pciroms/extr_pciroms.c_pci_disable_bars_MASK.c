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
typedef  scalar_t__ uint16_t ;
struct pci_io {int pi_width; scalar_t__ pi_data; int /*<<< orphan*/  pi_reg; int /*<<< orphan*/  pi_sel; } ;
struct pci_conf {int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 int /*<<< orphan*/  PCIOCWRITE ; 
 int /*<<< orphan*/  PCI_CFG_CMD ; 
 int /*<<< orphan*/  PCI_CFG_ROM_BAR ; 
 int FUNC0 (int,int /*<<< orphan*/ ,struct pci_io*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 

__attribute__((used)) static int
FUNC2(int pci_fd, struct pci_conf *dev, uint16_t *oldcmd)
{
	struct pci_io	 io;

	/*
	 * Clear ROM BAR to deactivate the mapping.
	 */
	io.pi_sel = dev->pc_sel;
	io.pi_reg = PCI_CFG_ROM_BAR;
	io.pi_width = 4;
	io.pi_data = 0;
	if (FUNC0(pci_fd, PCIOCWRITE, &io) == -1)
		return 0;

	/*
	 * Restore state of the command register.
	 */
	io.pi_sel = dev->pc_sel;
	io.pi_reg = PCI_CFG_CMD;
	io.pi_width = 2;
	io.pi_data = *oldcmd;
	if (FUNC0(pci_fd, PCIOCWRITE, &io) == -1) {
		FUNC1("ioctl");
		return 0;
	}

	return 0;
}