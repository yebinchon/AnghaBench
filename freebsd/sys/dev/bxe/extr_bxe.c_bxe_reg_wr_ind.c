
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct bxe_softc {int dev; } ;


 int PCICFG_GRC_ADDRESS ;
 int PCICFG_GRC_DATA ;
 int pci_write_config (int ,int ,int ,int) ;

void
bxe_reg_wr_ind(struct bxe_softc *sc,
               uint32_t addr,
               uint32_t val)
{
    pci_write_config(sc->dev, PCICFG_GRC_ADDRESS, addr, 4);
    pci_write_config(sc->dev, PCICFG_GRC_DATA, val, 4);
    pci_write_config(sc->dev, PCICFG_GRC_ADDRESS, 0, 4);
}
