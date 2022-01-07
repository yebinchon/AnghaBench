
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {void* setmode; int reset; void* ch_detach; int ch_attach; TYPE_1__* chip; struct ali_sata_resources* chipset_data; int getrev; int channels; } ;
struct ali_sata_resources {int ** bars; } ;
typedef int device_t ;
struct TYPE_2__ {int cfg2; int chiprev; int cfg1; } ;





 int ENXIO ;
 int M_ATAPCI ;
 int M_WAITOK ;
 int PCIR_BAR (int) ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int ata_ali_ch_attach ;
 int ata_ali_reset ;
 int ata_ali_sata_ch_attach ;
 void* ata_ali_setmode ;
 int ata_generic_intr ;
 void* ata_pci_ch_detach ;
 int ata_sata_getrev ;
 void* ata_sata_setmode ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 int * bus_alloc_resource_any (int ,int ,int*,int ) ;
 int bus_release_resource (int ,int ,int,int *) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int free (struct ali_sata_resources*,int ) ;
 struct ali_sata_resources* malloc (int,int ,int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_ali_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);
    struct ali_sata_resources *res;
    int i, rid;

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    switch (ctlr->chip->cfg2) {
    case 128:
 ctlr->channels = ctlr->chip->cfg1;
 ctlr->ch_attach = ata_ali_sata_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->setmode = ata_sata_setmode;
 ctlr->getrev = ata_sata_getrev;


 res = malloc(sizeof(struct ali_sata_resources), M_ATAPCI, M_WAITOK);
 for (i = 0; i < 4; i++) {
  rid = PCIR_BAR(i);
  res->bars[i] = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &rid,
      RF_ACTIVE);
  if (res->bars[i] == ((void*)0)) {
   device_printf(dev, "Failed to allocate BAR %d\n", i);
   for (i--; i >=0; i--)
    bus_release_resource(dev, SYS_RES_IOPORT,
        PCIR_BAR(i), res->bars[i]);
   free(res, M_ATAPCI);
   return ENXIO;
  }
 }
 ctlr->chipset_data = res;
 break;

    case 130:

 pci_write_config(dev, 0x4a, pci_read_config(dev, 0x4a, 1) | 0x20, 1);


 if (ctlr->chip->chiprev < 0xc7)
     pci_write_config(dev, 0x4b, pci_read_config(dev, 0x4b, 1) |
  0x09, 1);


 pci_write_config(dev, 0x53, pci_read_config(dev, 0x53, 1) |
     (ctlr->chip->chiprev >= 0xc7 ? 0x03 : 0x01), 1);


 if (ctlr->chip->chiprev <= 0xc4)
     device_printf(dev,
     "using PIO transfers above 137GB as workaround for "
     "48bit DMA access bug, expect reduced performance\n");
 ctlr->ch_attach = ata_ali_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->reset = ata_ali_reset;
 ctlr->setmode = ata_ali_setmode;
 break;

    case 129:

 pci_write_config(dev, 0x53, pci_read_config(dev, 0x53, 1) | 0x03, 1);
 ctlr->setmode = ata_ali_setmode;
 break;
    }
    return 0;
}
