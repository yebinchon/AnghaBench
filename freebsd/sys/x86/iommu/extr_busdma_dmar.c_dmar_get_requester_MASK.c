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
typedef  int uint16_t ;
typedef  int /*<<< orphan*/ * device_t ;
typedef  scalar_t__ devclass_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*) ; 
 int PCIEM_FLAGS_TYPE ; 
 int PCIEM_TYPE_PCI_BRIDGE ; 
 scalar_t__ PCIER_FLAGS ; 
 int /*<<< orphan*/  PCIY_EXPRESS ; 
 int FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int FUNC9 (int /*<<< orphan*/ *,scalar_t__,int) ; 

device_t
FUNC10(device_t dev, uint16_t *rid)
{
	devclass_t pci_class;
	device_t l, pci, pcib, pcip, pcibp, requester;
	int cap_offset;
	uint16_t pcie_flags;
	bool bridge_is_pcie;

	pci_class = FUNC2("pci");
	l = requester = dev;

	*rid = FUNC8(dev);

	/*
	 * Walk the bridge hierarchy from the target device to the
	 * host port to find the translating bridge nearest the DMAR
	 * unit.
	 */
	for (;;) {
		pci = FUNC5(l);
		FUNC0(pci != NULL, ("dmar_get_requester(%s): NULL parent "
		    "for %s", FUNC4(dev), FUNC4(l)));
		FUNC0(FUNC3(pci) == pci_class,
		    ("dmar_get_requester(%s): non-pci parent %s for %s",
		    FUNC4(dev), FUNC4(pci),
		    FUNC4(l)));

		pcib = FUNC5(pci);
		FUNC0(pcib != NULL, ("dmar_get_requester(%s): NULL bridge "
		    "for %s", FUNC4(dev), FUNC4(pci)));

		/*
		 * The parent of our "bridge" isn't another PCI bus,
		 * so pcib isn't a PCI->PCI bridge but rather a host
		 * port, and the requester ID won't be translated
		 * further.
		 */
		pcip = FUNC5(pcib);
		if (FUNC3(pcip) != pci_class)
			break;
		pcibp = FUNC5(pcip);

		if (FUNC6(l, PCIY_EXPRESS, &cap_offset) == 0) {
			/*
			 * Do not stop the loop even if the target
			 * device is PCIe, because it is possible (but
			 * unlikely) to have a PCI->PCIe bridge
			 * somewhere in the hierarchy.
			 */
			l = pcib;
		} else {
			/*
			 * Device is not PCIe, it cannot be seen as a
			 * requester by DMAR unit.  Check whether the
			 * bridge is PCIe.
			 */
			bridge_is_pcie = FUNC6(pcib, PCIY_EXPRESS,
			    &cap_offset) == 0;
			requester = pcib;

			/*
			 * Check for a buggy PCIe/PCI bridge that
			 * doesn't report the express capability.  If
			 * the bridge above it is express but isn't a
			 * PCI bridge, then we know pcib is actually a
			 * PCIe/PCI bridge.
			 */
			if (!bridge_is_pcie && FUNC6(pcibp,
			    PCIY_EXPRESS, &cap_offset) == 0) {
				pcie_flags = FUNC9(pcibp,
				    cap_offset + PCIER_FLAGS, 2);
				if ((pcie_flags & PCIEM_FLAGS_TYPE) !=
				    PCIEM_TYPE_PCI_BRIDGE)
					bridge_is_pcie = true;
			}

			if (bridge_is_pcie) {
				/*
				 * The current device is not PCIe, but
				 * the bridge above it is.  This is a
				 * PCIe->PCI bridge.  Assume that the
				 * requester ID will be the secondary
				 * bus number with slot and function
				 * set to zero.
				 *
				 * XXX: Doesn't handle the case where
				 * the bridge is PCIe->PCI-X, and the
				 * bridge will only take ownership of
				 * requests in some cases.  We should
				 * provide context entries with the
				 * same page tables for taken and
				 * non-taken transactions.
				 */
				*rid = FUNC1(FUNC7(l), 0, 0);
				l = pcibp;
			} else {
				/*
				 * Neither the device nor the bridge
				 * above it are PCIe.  This is a
				 * conventional PCI->PCI bridge, which
				 * will use the bridge's BSF as the
				 * requester ID.
				 */
				*rid = FUNC8(pcib);
				l = pcib;
			}
		}
	}
	return (requester);
}