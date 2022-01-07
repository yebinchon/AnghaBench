
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct ata_pci_controller {int channels; int ichannels; scalar_t__ legacy; scalar_t__ (* chipinit ) (int *) ;int r_rid1; int r_type1; int r_res1; int * dev; int ch_detach; int ch_attach; } ;
typedef int * device_t ;


 int ATA_BMADDR_RID ;
 int ENXIO ;
 int IOMASK ;
 int PCIM_CMD_BUSMASTEREN ;
 int PCIR_BAR (int) ;
 int PCIR_COMMAND ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int ata_devclass ;
 scalar_t__ ata_legacy (int *) ;
 int ata_pci_ch_attach ;
 int ata_pci_ch_detach ;
 int bus_alloc_resource_any (int *,int ,int *,int ) ;
 int bus_generic_attach (int *) ;
 int devclass_find_free_unit (int ,int) ;
 int * device_add_child (int *,char*,int) ;
 struct ata_pci_controller* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int device_set_ivars (int *,void*) ;
 int pci_enable_busmaster (int *) ;
 int pci_read_config (int *,int ,int) ;
 scalar_t__ stub1 (int *) ;

int
ata_pci_attach(device_t dev)
{
    struct ata_pci_controller *ctlr = device_get_softc(dev);
    device_t child;
    u_int32_t cmd;
    int unit;


    ctlr->legacy = ata_legacy(dev);
    if (ctlr->legacy || pci_read_config(dev, PCIR_BAR(2), 4) & IOMASK)
 ctlr->channels = 2;
    else
 ctlr->channels = 1;
    ctlr->ichannels = -1;
    ctlr->ch_attach = ata_pci_ch_attach;
    ctlr->ch_detach = ata_pci_ch_detach;
    ctlr->dev = dev;


    pci_enable_busmaster(dev);
    cmd = pci_read_config(dev, PCIR_COMMAND, 2);


    if ((cmd & PCIM_CMD_BUSMASTEREN) == PCIM_CMD_BUSMASTEREN) {
 ctlr->r_type1 = SYS_RES_IOPORT;
 ctlr->r_rid1 = ATA_BMADDR_RID;
 ctlr->r_res1 = bus_alloc_resource_any(dev, ctlr->r_type1, &ctlr->r_rid1,
           RF_ACTIVE);
    }

    if (ctlr->chipinit(dev))
 return ENXIO;


    for (unit = 0; unit < ctlr->channels; unit++) {
 if ((ctlr->ichannels & (1 << unit)) == 0)
     continue;
 child = device_add_child(dev, "ata",
     ((unit == 0 || unit == 1) && ctlr->legacy) ?
     unit : devclass_find_free_unit(ata_devclass, 2));
 if (child == ((void*)0))
     device_printf(dev, "failed to add ata child device\n");
 else
     device_set_ivars(child, (void *)(intptr_t)unit);
    }
    bus_generic_attach(dev);
    return 0;
}
