
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {TYPE_1__* chip; int channels; void* setmode; void* reset; void* ch_detach; void* ch_attach; } ;
typedef int * device_t ;
struct TYPE_2__ {int cfg2; scalar_t__ cfg1; } ;


 int ENXIO ;
 int ata_generic_intr ;
 void* ata_generic_reset ;
 void* ata_jmicron_ch_attach ;
 void* ata_jmicron_setmode ;
 void* ata_pci_ch_detach ;
 scalar_t__ ata_setup_interrupt (int *,int ) ;
 int bus_generic_attach (int *) ;
 int * device_add_child (int *,int *,int) ;
 struct ata_pci_controller* device_get_softc (int *) ;
 int device_set_ivars (int *,void*) ;
 int pci_read_config (int *,int,int) ;
 int pci_write_config (int *,int,int,int) ;

__attribute__((used)) static int
ata_jmicron_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);
    device_t child;

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;


    if (pci_read_config(dev, 0xdf, 1) & 0x40) {

 ctlr->ch_attach = ata_jmicron_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->reset = ata_generic_reset;
 ctlr->setmode = ata_jmicron_setmode;
 ctlr->channels = ctlr->chip->cfg2;
    }
    else {

 pci_write_config(dev, 0x40, 0x80c0a131, 4);
 pci_write_config(dev, 0x80, 0x01200000, 4);

 if (ctlr->chip->cfg1) {
      child = device_add_child(dev, ((void*)0), -1);
  if (child != ((void*)0)) {
      device_set_ivars(child, (void *)(intptr_t)-1);
      bus_generic_attach(dev);
  }
 }
 ctlr->ch_attach = ata_jmicron_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->reset = ata_generic_reset;
 ctlr->setmode = ata_jmicron_setmode;
 ctlr->channels = ctlr->chip->cfg2;
    }
    return 0;
}
