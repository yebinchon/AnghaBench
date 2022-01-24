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
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
typedef  scalar_t__ uint16_t ;
struct pci_conf {int /*<<< orphan*/  pc_sel; } ;

/* Variables and functions */
 scalar_t__ PCIER_DEVICE_STA ; 
 scalar_t__ PCIE_ERRORS ; 
 scalar_t__ PCIR_AER_COR_STATUS ; 
 scalar_t__ PCIR_AER_UC_SEVERITY ; 
 scalar_t__ PCIR_AER_UC_STATUS ; 
 scalar_t__ PCIR_STATUS ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int /*<<< orphan*/  PCIZ_AER ; 
 scalar_t__ PCI_ERRORS ; 
 int /*<<< orphan*/  aer_cor ; 
 int /*<<< orphan*/  aer_uc ; 
 scalar_t__ FUNC0 (int,struct pci_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pci_status ; 
 int /*<<< orphan*/  pcie_device_status ; 
 scalar_t__ FUNC1 (int,struct pci_conf*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ *,scalar_t__,int) ; 

void
FUNC4(int fd, struct pci_conf *p)
{
	uint32_t mask, severity;
	uint16_t sta, aer;
	uint8_t pcie;

	/* First check for standard PCI errors. */
	sta = FUNC3(fd, &p->pc_sel, PCIR_STATUS, 2);
	FUNC2("PCI errors", pci_status, sta & PCI_ERRORS);

	/* See if this is a PCI-express device. */
	pcie = FUNC0(fd, p, PCIY_EXPRESS);
	if (pcie == 0)
		return;

	/* Check for PCI-e errors. */
	sta = FUNC3(fd, &p->pc_sel, pcie + PCIER_DEVICE_STA, 2);
	FUNC2("PCI-e errors", pcie_device_status, sta & PCIE_ERRORS);

	/* See if this device supports AER. */
	aer = FUNC1(fd, p, PCIZ_AER);
	if (aer == 0)
		return;

	/* Check for uncorrected errors. */
	mask = FUNC3(fd, &p->pc_sel, aer + PCIR_AER_UC_STATUS, 4);
        severity = FUNC3(fd, &p->pc_sel, aer + PCIR_AER_UC_SEVERITY, 4);
	FUNC2("Fatal", aer_uc, mask & severity);
	FUNC2("Non-fatal", aer_uc, mask & ~severity);

	/* Check for corrected errors. */
	mask = FUNC3(fd, &p->pc_sel, aer + PCIR_AER_COR_STATUS, 4);
	FUNC2("Corrected", aer_cor, mask);
}