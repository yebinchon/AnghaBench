
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint16_t ;
struct TYPE_2__ {int pcie_cap_flags; scalar_t__ pcie_pm_cap_reg; } ;
struct bxe_softc {TYPE_1__ devinfo; int dev; int wol; } ;


 int BLOGE (struct bxe_softc*,char*,int,int) ;
 int BLOGW (struct bxe_softc*,char*) ;
 int BXE_PM_CAPABLE_FLAG ;
 int CHIP_REV_IS_SLOW (struct bxe_softc*) ;
 int DELAY (int) ;
 int PCIM_PSTAT_D3 ;
 int PCIM_PSTAT_DMASK ;
 int PCIM_PSTAT_PME ;
 int PCIM_PSTAT_PMEENABLE ;
 scalar_t__ PCIR_POWER_STATUS ;


 int pci_read_config (int ,scalar_t__,int) ;
 int pci_write_config (int ,scalar_t__,int,int) ;

__attribute__((used)) static int
bxe_set_power_state(struct bxe_softc *sc,
                    uint8_t state)
{
    uint16_t pmcsr;


    if (!(sc->devinfo.pcie_cap_flags & BXE_PM_CAPABLE_FLAG)) {
        BLOGW(sc, "No power capability\n");
        return (0);
    }

    pmcsr = pci_read_config(sc->dev,
                            (sc->devinfo.pcie_pm_cap_reg + PCIR_POWER_STATUS),
                            2);

    switch (state) {
    case 129:
        pci_write_config(sc->dev,
                         (sc->devinfo.pcie_pm_cap_reg + PCIR_POWER_STATUS),
                         ((pmcsr & ~PCIM_PSTAT_DMASK) | PCIM_PSTAT_PME), 2);

        if (pmcsr & PCIM_PSTAT_DMASK) {

            DELAY(20000);
        }

        break;

    case 128:



        if (CHIP_REV_IS_SLOW(sc)) {
            return (0);
        }

        pmcsr &= ~PCIM_PSTAT_DMASK;
        pmcsr |= PCIM_PSTAT_D3;

        if (sc->wol) {
            pmcsr |= PCIM_PSTAT_PMEENABLE;
        }

        pci_write_config(sc->dev,
                         (sc->devinfo.pcie_pm_cap_reg + PCIR_POWER_STATUS),
                         pmcsr, 4);





        break;

    default:
        BLOGE(sc, "Can't support PCI power state = 0x%x pmcsr 0x%x\n",
            state, pmcsr);
        return (-1);
    }

    return (0);
}
