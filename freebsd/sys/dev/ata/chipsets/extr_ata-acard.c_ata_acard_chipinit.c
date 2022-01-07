
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int channels; int setmode; TYPE_1__* chip; int ch_detach; int ch_attach; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ cfg1; } ;


 scalar_t__ ATP_OLD ;
 int ENXIO ;
 int ata_acard_850_setmode ;
 int ata_acard_86X_setmode ;
 int ata_acard_ch_attach ;
 int ata_generic_intr ;
 int ata_pci_ch_detach ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
ata_acard_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    ctlr->ch_attach = ata_acard_ch_attach;
    ctlr->ch_detach = ata_pci_ch_detach;
    if (ctlr->chip->cfg1 == ATP_OLD) {
 ctlr->setmode = ata_acard_850_setmode;

 ctlr->channels = 1;
 device_printf(dev, "second channel ignored\n");
    }
    else
 ctlr->setmode = ata_acard_86X_setmode;
    return 0;
}
