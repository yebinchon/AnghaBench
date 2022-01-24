#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint32_t ;
struct pcicfg_msix {scalar_t__ msix_table_offset; int /*<<< orphan*/  msix_table_res; } ;
struct TYPE_3__ {struct pcicfg_msix msix; } ;
struct pci_devinfo {TYPE_1__ cfg; } ;
struct ntb_softc {TYPE_2__* msix_data; int /*<<< orphan*/  device; } ;
struct TYPE_4__ {scalar_t__ nmd_data; scalar_t__ nmd_ofs; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 scalar_t__ MSI_INTEL_ADDR_BASE ; 
 scalar_t__ PCI_MSIX_ENTRY_DATA ; 
 scalar_t__ PCI_MSIX_ENTRY_LOWER_ADDR ; 
 scalar_t__ PCI_MSIX_ENTRY_SIZE ; 
 scalar_t__ XEON_NONLINK_DB_MSIX_BITS ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 struct pci_devinfo* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC5 (TYPE_2__*) ; 

__attribute__((used)) static void
FUNC6(struct ntb_softc *ntb)
{
	struct pci_devinfo *dinfo;
	struct pcicfg_msix *msix;
	uint32_t laddr, data, i, offset;

	dinfo = FUNC3(ntb->device);
	msix = &dinfo->cfg.msix;

	FUNC0(XEON_NONLINK_DB_MSIX_BITS == FUNC5(ntb->msix_data));

	for (i = 0; i < XEON_NONLINK_DB_MSIX_BITS; i++) {
		offset = msix->msix_table_offset + i * PCI_MSIX_ENTRY_SIZE;

		laddr = FUNC2(msix->msix_table_res, offset +
		    PCI_MSIX_ENTRY_LOWER_ADDR);
		FUNC4(2, "local MSIX addr(%u): 0x%x\n", i, laddr);

		FUNC1((laddr & MSI_INTEL_ADDR_BASE) == MSI_INTEL_ADDR_BASE,
		    ("local MSIX addr 0x%x not in MSI base 0x%x", laddr,
		     MSI_INTEL_ADDR_BASE));
		ntb->msix_data[i].nmd_ofs = laddr;

		data = FUNC2(msix->msix_table_res, offset +
		    PCI_MSIX_ENTRY_DATA);
		FUNC4(2, "local MSIX data(%u): 0x%x\n", i, data);

		ntb->msix_data[i].nmd_data = data;
	}
}