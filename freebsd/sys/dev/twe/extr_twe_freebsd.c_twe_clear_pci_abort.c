
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_dev; } ;


 int PCIR_STATUS ;
 int TWE_CONTROL (struct twe_softc*,int ) ;
 int TWE_CONTROL_CLEAR_PCI_ABORT ;
 int TWE_PCI_CLEAR_PCI_ABORT ;
 int pci_write_config (int ,int ,int ,int) ;

void
twe_clear_pci_abort(struct twe_softc *sc)
{
    TWE_CONTROL(sc, TWE_CONTROL_CLEAR_PCI_ABORT);
    pci_write_config(sc->twe_dev, PCIR_STATUS, TWE_PCI_CLEAR_PCI_ABORT, 2);
}
