
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tdfx_softc {int devt; int memrange; int memrid2; int * memrange2; int memrid; } ;
typedef int device_t ;


 scalar_t__ PCI_DEVICE_3DFX_BANSHEE ;
 scalar_t__ PCI_DEVICE_3DFX_VOODOO3 ;
 int SYS_RES_MEMORY ;
 int bus_release_resource (int ,int ,int ,int ) ;
 int destroy_dev (int ) ;
 struct tdfx_softc* device_get_softc (int ) ;
 scalar_t__ pci_get_devid (int ) ;
 int printf (char*) ;
 int tdfx_clrmtrr (int ) ;

__attribute__((used)) static int
tdfx_detach(device_t dev) {
 struct tdfx_softc* tdfx_info;
 int retval;
 tdfx_info = device_get_softc(dev);


 bus_release_resource(dev, SYS_RES_MEMORY, tdfx_info->memrid,
   tdfx_info->memrange);


 if(pci_get_devid(dev) == PCI_DEVICE_3DFX_BANSHEE ||
   pci_get_devid(dev) == PCI_DEVICE_3DFX_VOODOO3) {
  if(tdfx_info->memrange2 != ((void*)0))
   bus_release_resource(dev, SYS_RES_MEMORY, tdfx_info->memrid2,
    tdfx_info->memrange);



 }




 retval = tdfx_clrmtrr(dev);





   destroy_dev(tdfx_info->devt);
 return(0);
}
