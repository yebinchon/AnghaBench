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
typedef  int uint64_t ;
struct ntb_softc {TYPE_2__* peer_reg; TYPE_1__* peer_msix_data; struct ntb_pci_bar_info* peer_lapic_bar; } ;
struct ntb_pci_bar_info {int /*<<< orphan*/  pci_bus_handle; int /*<<< orphan*/  pci_bus_tag; } ;
typedef  int /*<<< orphan*/  device_t ;
struct TYPE_4__ {int /*<<< orphan*/  db_bell; } ;
struct TYPE_3__ {int /*<<< orphan*/  nmd_data; int /*<<< orphan*/  nmd_ofs; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct ntb_softc*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NTB_SB01BASE_LOCKUP ; 
 int /*<<< orphan*/  NTB_SDOORBELL_LOCKUP ; 
 unsigned int XEON_NONLINK_DB_MSIX_BITS ; 
 int /*<<< orphan*/  XEON_PDOORBELL_OFFSET ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ntb_softc*,int /*<<< orphan*/ ,int) ; 
 struct ntb_softc* FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void
FUNC6(device_t dev, uint64_t bit)
{
	struct ntb_softc *ntb = FUNC3(dev);

	if (FUNC0(ntb, NTB_SB01BASE_LOCKUP)) {
		struct ntb_pci_bar_info *lapic;
		unsigned i;

		lapic = ntb->peer_lapic_bar;

		for (i = 0; i < XEON_NONLINK_DB_MSIX_BITS; i++) {
			if ((bit & FUNC4(dev, i)) != 0)
				FUNC1(lapic->pci_bus_tag,
				    lapic->pci_bus_handle,
				    ntb->peer_msix_data[i].nmd_ofs,
				    ntb->peer_msix_data[i].nmd_data);
		}
		return;
	}

	if (FUNC0(ntb, NTB_SDOORBELL_LOCKUP)) {
		FUNC5(2, XEON_PDOORBELL_OFFSET, bit);
		return;
	}

	FUNC2(ntb, ntb->peer_reg->db_bell, bit);
}