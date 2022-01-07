
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int channels; int setmode; int reset; int ch_detach; int ch_attach; TYPE_1__* chip; } ;
typedef int * device_t ;
struct TYPE_2__ {scalar_t__ cfg1; } ;


 int ENXIO ;
 int ata_generic_intr ;
 int ata_generic_reset ;
 int ata_marvell_ch_attach ;
 int ata_marvell_setmode ;
 int ata_pci_ch_detach ;
 scalar_t__ ata_setup_interrupt (int *,int ) ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int *,int) ;
 struct ata_pci_controller* device_get_softc (int *) ;
 int device_set_ivars (int *,void*) ;

__attribute__((used)) static int
ata_marvell_chipinit(device_t dev)
{
 struct ata_pci_controller *ctlr = device_get_softc(dev);
 device_t child;

 if (ata_setup_interrupt(dev, ata_generic_intr))
  return ENXIO;

 if (ctlr->chip->cfg1) {
      child = device_add_child(dev, ((void*)0), -1);
  if (child != ((void*)0)) {
      device_set_ivars(child, (void *)(intptr_t)-1);
      bus_generic_attach(dev);
  }
 }
        ctlr->ch_attach = ata_marvell_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->reset = ata_generic_reset;
        ctlr->setmode = ata_marvell_setmode;
        ctlr->channels = 1;
        return (0);
}
