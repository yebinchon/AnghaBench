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
typedef  int /*<<< orphan*/  uint64_t ;
typedef  int uint32_t ;
struct TYPE_3__ {scalar_t__ msi_alloc; int msi_ctrl; } ;
struct TYPE_4__ {TYPE_1__ msi; } ;
struct pci_devinfo {TYPE_2__ cfg; } ;
struct fire_softc {int sc_msi_data_mask; int sc_flags; scalar_t__ sc_msix_data_width; int /*<<< orphan*/  sc_msi_addr64; int /*<<< orphan*/  sc_msi_addr32; } ;
typedef  int /*<<< orphan*/  device_t ;

/* Variables and functions */
 int EINVAL ; 
 int ENXIO ; 
 int FIRE_MSIX ; 
 int PCIM_MSICTRL_64BIT ; 
 struct pci_devinfo* FUNC0 (int /*<<< orphan*/ ) ; 
 struct fire_softc* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 scalar_t__ FUNC3 (int) ; 

__attribute__((used)) static int
FUNC4(device_t dev, device_t child, int irq, uint64_t *addr,
    uint32_t *data)
{
	struct fire_softc *sc;
	struct pci_devinfo *dinfo;

	sc = FUNC1(dev);
	dinfo = FUNC0(child);
	if (dinfo->cfg.msi.msi_alloc > 0) {
		if ((irq & ~sc->sc_msi_data_mask) != 0) {
			FUNC2(dev, "invalid MSI 0x%x\n", irq);
			return (EINVAL);
		}
	} else {
		if ((sc->sc_flags & FIRE_MSIX) == 0)
			return (ENXIO);
		if (FUNC3(irq) > sc->sc_msix_data_width) {
			FUNC2(dev, "invalid MSI-X 0x%x\n", irq);
			return (EINVAL);
		}
	}
	if (dinfo->cfg.msi.msi_alloc > 0 &&
	    (dinfo->cfg.msi.msi_ctrl & PCIM_MSICTRL_64BIT) == 0)
		*addr = sc->sc_msi_addr32;
	else
		*addr = sc->sc_msi_addr64;
	*data = irq;
	return (0);
}