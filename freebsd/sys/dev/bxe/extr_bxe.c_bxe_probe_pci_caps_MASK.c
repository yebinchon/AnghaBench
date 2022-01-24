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
typedef  int uint16_t ;
struct TYPE_2__ {int pcie_pm_cap_reg; int pcie_link_speed; int pcie_link_width; int pcie_pcie_cap_reg; int pcie_msi_cap_reg; int pcie_msix_cap_reg; int /*<<< orphan*/  pcie_cap_flags; } ;
struct bxe_softc {TYPE_1__ devinfo; int /*<<< orphan*/  dev; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int,...) ; 
 int /*<<< orphan*/  BXE_MSIX_CAPABLE_FLAG ; 
 int /*<<< orphan*/  BXE_MSI_CAPABLE_FLAG ; 
 int /*<<< orphan*/  BXE_PCIE_CAPABLE_FLAG ; 
 int /*<<< orphan*/  BXE_PM_CAPABLE_FLAG ; 
 scalar_t__ FUNC1 (struct bxe_softc*) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int PCIM_LINK_STA_SPEED ; 
 int PCIM_LINK_STA_WIDTH ; 
 int /*<<< orphan*/  PCIR_EXPRESS_LINK_STA ; 
 int /*<<< orphan*/  PCIY_MSI ; 
 int /*<<< orphan*/  PCIY_MSIX ; 
 int /*<<< orphan*/  PCIY_PMG ; 
 int FUNC2 (struct bxe_softc*,int) ; 
 int FUNC3 (struct bxe_softc*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 

__attribute__((used)) static void
FUNC5(struct bxe_softc *sc)
{
    uint16_t link_status;
    int reg;

    /* check if PCI Power Management is enabled */
    if (FUNC4(sc->dev, PCIY_PMG, &reg) == 0) {
        if (reg != 0) {
            FUNC0(sc, DBG_LOAD, "Found PM capability at 0x%04x\n", reg);

            sc->devinfo.pcie_cap_flags |= BXE_PM_CAPABLE_FLAG;
            sc->devinfo.pcie_pm_cap_reg = (uint16_t)reg;
        }
    }

    link_status = FUNC3(sc, PCIR_EXPRESS_LINK_STA, 2);

    /* handle PCIe 2.0 workarounds for 57710 */
    if (FUNC1(sc)) {
        /* workaround for 57710 errata E4_57710_27462 */
        sc->devinfo.pcie_link_speed =
            (FUNC2(sc, 0x3d04) & (1 << 24)) ? 2 : 1;

        /* workaround for 57710 errata E4_57710_27488 */
        sc->devinfo.pcie_link_width =
            ((link_status & PCIM_LINK_STA_WIDTH) >> 4);
        if (sc->devinfo.pcie_link_speed > 1) {
            sc->devinfo.pcie_link_width =
                ((link_status & PCIM_LINK_STA_WIDTH) >> 4) >> 1;
        }
    } else {
        sc->devinfo.pcie_link_speed =
            (link_status & PCIM_LINK_STA_SPEED);
        sc->devinfo.pcie_link_width =
            ((link_status & PCIM_LINK_STA_WIDTH) >> 4);
    }

    FUNC0(sc, DBG_LOAD, "PCIe link speed=%d width=%d\n",
          sc->devinfo.pcie_link_speed, sc->devinfo.pcie_link_width);

    sc->devinfo.pcie_cap_flags |= BXE_PCIE_CAPABLE_FLAG;
    sc->devinfo.pcie_pcie_cap_reg = (uint16_t)reg;

    /* check if MSI capability is enabled */
    if (FUNC4(sc->dev, PCIY_MSI, &reg) == 0) {
        if (reg != 0) {
            FUNC0(sc, DBG_LOAD, "Found MSI capability at 0x%04x\n", reg);

            sc->devinfo.pcie_cap_flags |= BXE_MSI_CAPABLE_FLAG;
            sc->devinfo.pcie_msi_cap_reg = (uint16_t)reg;
        }
    }

    /* check if MSI-X capability is enabled */
    if (FUNC4(sc->dev, PCIY_MSIX, &reg) == 0) {
        if (reg != 0) {
            FUNC0(sc, DBG_LOAD, "Found MSI-X capability at 0x%04x\n", reg);

            sc->devinfo.pcie_cap_flags |= BXE_MSIX_CAPABLE_FLAG;
            sc->devinfo.pcie_msix_cap_reg = (uint16_t)reg;
        }
    }
}