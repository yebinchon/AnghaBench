
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ata_pci_controller {int channels; void* setmode; int getrev; TYPE_1__* chip; int * r_res2; void* r_rid2; void* r_type2; int reset; void* ch_detach; void* ch_attach; void* chipset_data; } ;
struct ata_intel_data {int lock; } ;
typedef int device_t ;
struct TYPE_2__ {scalar_t__ chipid; scalar_t__ max_dma; int cfg2; int cfg1; } ;


 scalar_t__ ATA_I31244 ;
 scalar_t__ ATA_I82371FB ;
 scalar_t__ ATA_I82801HBM_S1 ;
 int ATA_INL (int *,int) ;
 scalar_t__ ATA_ISCH ;
 int ATA_OUTL (int *,int,int) ;
 scalar_t__ ATA_SA150 ;
 int ENXIO ;
 int INTEL_ICH5 ;
 int INTEL_ICH7 ;
 int MTX_DEF ;
 int M_ATAPCI ;
 int M_WAITOK ;
 int M_ZERO ;
 void* PCIR_BAR (int) ;
 scalar_t__ PCIS_STORAGE_IDE ;
 int RF_ACTIVE ;
 void* SYS_RES_IOPORT ;
 void* SYS_RES_MEMORY ;
 int ata_generic_intr ;
 void* ata_intel_31244_ch_attach ;
 void* ata_intel_31244_ch_detach ;
 int ata_intel_31244_reset ;
 void* ata_intel_ch_attach ;
 void* ata_intel_new_setmode ;
 void* ata_intel_old_setmode ;
 int ata_intel_reset ;
 int ata_intel_sata_getrev ;
 void* ata_intel_sch_setmode ;
 void* ata_pci_ch_detach ;
 int ata_sata_getrev ;
 void* ata_sata_setmode ;
 scalar_t__ ata_setup_interrupt (int ,int ) ;
 void* bus_alloc_resource_any (int ,void*,void**,int ) ;
 struct ata_pci_controller* device_get_softc (int ) ;
 struct ata_intel_data* malloc (int,int ,int) ;
 int mtx_init (int *,char*,int *,int ) ;
 scalar_t__ pci_get_subclass (int ) ;
 int pci_get_subvendor (int ) ;
 int pci_read_config (int ,int,int) ;
 int pci_write_config (int ,int,int,int) ;

__attribute__((used)) static int
ata_intel_chipinit(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);
    struct ata_intel_data *data;

    if (ata_setup_interrupt(dev, ata_generic_intr))
 return ENXIO;

    data = malloc(sizeof(struct ata_intel_data), M_ATAPCI, M_WAITOK | M_ZERO);
    mtx_init(&data->lock, "Intel SATA lock", ((void*)0), MTX_DEF);
    ctlr->chipset_data = (void *)data;


    if (ctlr->chip->chipid == ATA_I82371FB) {
 ctlr->setmode = ata_intel_old_setmode;
    }


    else if (ctlr->chip->chipid == ATA_I31244) {
 if (pci_get_subclass(dev) != PCIS_STORAGE_IDE) {
     ctlr->r_type2 = SYS_RES_MEMORY;
     ctlr->r_rid2 = PCIR_BAR(0);
     if (!(ctlr->r_res2 = bus_alloc_resource_any(dev, ctlr->r_type2,
       &ctlr->r_rid2,
       RF_ACTIVE)))
  return ENXIO;
     ctlr->channels = 4;
     ctlr->ch_attach = ata_intel_31244_ch_attach;
     ctlr->ch_detach = ata_intel_31244_ch_detach;
     ctlr->reset = ata_intel_31244_reset;
 }
 ctlr->setmode = ata_sata_setmode;
 ctlr->getrev = ata_sata_getrev;
    }

    else if (ctlr->chip->chipid == ATA_ISCH) {
 ctlr->channels = 1;
 ctlr->ch_attach = ata_intel_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->setmode = ata_intel_sch_setmode;
    }

    else if (ctlr->chip->max_dma < ATA_SA150) {
 ctlr->channels = ctlr->chip->cfg2;
 ctlr->ch_attach = ata_intel_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->setmode = ata_intel_new_setmode;
    }


    else {

 pci_write_config(dev, 0x92, pci_read_config(dev, 0x92, 2) | 0x0f, 2);

 ctlr->ch_attach = ata_intel_ch_attach;
 ctlr->ch_detach = ata_pci_ch_detach;
 ctlr->reset = ata_intel_reset;


 if ((ctlr->chip->cfg1 & INTEL_ICH7)) {
  ctlr->r_type2 = SYS_RES_MEMORY;
  ctlr->r_rid2 = PCIR_BAR(5);
  ctlr->r_res2 = bus_alloc_resource_any(dev, ctlr->r_type2,
      &ctlr->r_rid2, RF_ACTIVE);
  if (ctlr->r_res2 != ((void*)0)) {

   pci_write_config(dev, 0x94,
       pci_read_config(dev, 0x94, 4) | (1 << 9), 4);

   ATA_OUTL(ctlr->r_res2, 0x0C,
       ATA_INL(ctlr->r_res2, 0x0C) | 0xf);
  }

 } else if (ctlr->chip->chipid != ATA_I82801HBM_S1 ||
     pci_get_subvendor(dev) != 0x106b) {
  ctlr->r_type2 = SYS_RES_IOPORT;
  ctlr->r_rid2 = PCIR_BAR(5);
  ctlr->r_res2 = bus_alloc_resource_any(dev, ctlr->r_type2,
      &ctlr->r_rid2, RF_ACTIVE);
 }
 if (ctlr->r_res2 != ((void*)0) ||
     (ctlr->chip->cfg1 & INTEL_ICH5))
  ctlr->getrev = ata_intel_sata_getrev;
 ctlr->setmode = ata_sata_setmode;
    }
    return 0;
}
