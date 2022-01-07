
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dev; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int) ;
 int BLOGE (struct bxe_softc*,char*) ;
 int DBG_LOAD ;
 int PCIY_EXPRESS ;
 scalar_t__ pci_find_cap (int ,int ,int*) ;
 int pci_read_config (int ,int,int) ;

__attribute__((used)) static uint32_t
bxe_pcie_capability_read(struct bxe_softc *sc,
                         int reg,
                         int width)
{
    int pcie_reg;


    if (pci_find_cap(sc->dev, PCIY_EXPRESS, &pcie_reg) == 0) {
        if (pcie_reg != 0) {
            BLOGD(sc, DBG_LOAD, "PCIe capability at 0x%04x\n", pcie_reg);
            return (pci_read_config(sc->dev, (pcie_reg + reg), width));
        }
    }

    BLOGE(sc, "PCIe capability NOT FOUND!!!\n");

    return (0);
}
