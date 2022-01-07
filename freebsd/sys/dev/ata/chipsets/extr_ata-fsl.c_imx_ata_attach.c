
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ata_pci_controller {int channels; int ichannels; scalar_t__ legacy; int setmode; int ch_attach; scalar_t__ r_rid1; int r_type1; int r_res1; int * dev; int ch_detach; } ;
typedef int * device_t ;


 int ENXIO ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int ata_devclass ;
 scalar_t__ ata_legacy (int *) ;
 int ata_pci_ch_attach ;
 int ata_pci_ch_detach ;
 scalar_t__ ata_setup_interrupt (int *,int ) ;
 int bus_alloc_resource_any (int *,int ,scalar_t__*,int ) ;
 int bus_generic_attach (int *) ;
 int devclass_find_free_unit (int ,int) ;
 int * device_add_child (int *,char*,int) ;
 struct ata_pci_controller* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int device_set_ivars (int *,void*) ;
 int imx_ata_ch_attach ;
 int imx_ata_intr ;
 int imx_ata_setmode ;

__attribute__((used)) static int
imx_ata_attach(device_t dev)
{
 struct ata_pci_controller *ctrl;
 device_t child;
 int unit;

 ctrl = device_get_softc(dev);

 ctrl->legacy = ata_legacy(dev);
 ctrl->channels = 1;
 ctrl->ichannels = -1;
 ctrl->ch_attach = ata_pci_ch_attach;
 ctrl->ch_detach = ata_pci_ch_detach;
 ctrl->dev = dev;

 ctrl->r_type1 = SYS_RES_MEMORY;
 ctrl->r_rid1 = 0;
 ctrl->r_res1 = bus_alloc_resource_any(dev, ctrl->r_type1,
     &ctrl->r_rid1, RF_ACTIVE);

 if (ata_setup_interrupt(dev, imx_ata_intr)) {
  device_printf(dev, "failed to setup interrupt\n");
      return ENXIO;
 }

 ctrl->channels = 1;

 ctrl->ch_attach = imx_ata_ch_attach;
 ctrl->setmode = imx_ata_setmode;


 unit = 0;
 child = device_add_child(dev, "ata", ((unit == 0) && ctrl->legacy) ?
      unit : devclass_find_free_unit(ata_devclass, 2));
 if (child == ((void*)0))
  device_printf(dev, "failed to add ata child device\n");
 else
  device_set_ivars(child, (void *)(intptr_t)unit);

 bus_generic_attach(dev);
 return 0;
}
