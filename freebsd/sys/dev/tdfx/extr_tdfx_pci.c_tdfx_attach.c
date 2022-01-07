
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct tdfx_softc {int type; int addr0; int memrid; int addr1; int memrid2; int pio0; int pio0max; int piorid; TYPE_1__* devt; int * piorange; int * memrange2; int * memrange; int * curFile; int dv; int bus; int vendor; int dev; } ;
typedef int device_t ;
struct TYPE_2__ {struct tdfx_softc* si_drv1; } ;


 int GID_WHEEL ;
 int PCIR_BAR (int ) ;
 int PCIR_IOBASE0_2 ;
 int PCI_DEVICE_3DFX_BANSHEE ;
 int PCI_DEVICE_3DFX_VOODOO3 ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int UID_ROOT ;
 void* bus_alloc_resource_any (int ,int ,int*,int) ;
 struct tdfx_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 TYPE_1__* make_dev (int *,int ,int ,int ,int,char*,int ) ;
 int pci_get_bus (int ) ;
 int pci_get_devid (int ) ;
 int pci_get_slot (int ) ;
 int pci_get_vendor (int ) ;
 int pci_read_config (int ,int,int) ;
 scalar_t__ rman_get_start (int *) ;
 int tdfx_cdev ;
 int tdfx_count ;
 scalar_t__ tdfx_setmtrr (int ) ;

__attribute__((used)) static int
tdfx_attach(device_t dev) {
 struct tdfx_softc *tdfx_info;


 int rid = PCIR_BAR(0);


 tdfx_count++;


 tdfx_info = device_get_softc(dev);
 tdfx_info->dev = dev;
 tdfx_info->vendor = pci_get_vendor(dev);
 tdfx_info->type = pci_get_devid(dev) >> 16;
 tdfx_info->bus = pci_get_bus(dev);
 tdfx_info->dv = pci_get_slot(dev);
 tdfx_info->curFile = ((void*)0);






 tdfx_info->addr0 = (pci_read_config(dev, 0x10, 4) & 0xffff0000);




 tdfx_info->memrange = bus_alloc_resource_any(dev, SYS_RES_MEMORY,
  &rid, RF_ACTIVE | RF_SHAREABLE);
 if(tdfx_info->memrange == ((void*)0)) {



  tdfx_info->memrid = 0;
 }
 else {
  tdfx_info->memrid = rid;




 }


 if(pci_get_devid(dev) == PCI_DEVICE_3DFX_VOODOO3 ||
  pci_get_devid(dev) == PCI_DEVICE_3DFX_BANSHEE) {
  rid = 0x14;
  tdfx_info->addr1 = (pci_read_config(dev, 0x14, 4) & 0xffff0000);



  tdfx_info->memrange2 = bus_alloc_resource_any(dev,
   SYS_RES_MEMORY, &rid, RF_ACTIVE | RF_SHAREABLE);
  if(tdfx_info->memrange2 == ((void*)0)) {



   tdfx_info->memrid2 = 0;
  }
  else {
   tdfx_info->memrid2 = rid;
  }

  rid = PCIR_IOBASE0_2;
  tdfx_info->pio0 = pci_read_config(dev, 0x2c, 2);
  tdfx_info->pio0max = pci_read_config(dev, 0x30, 2) + tdfx_info->pio0;
  tdfx_info->piorange = bus_alloc_resource_any(dev,
   SYS_RES_IOPORT, &rid, RF_ACTIVE | RF_SHAREABLE);
  if(tdfx_info->piorange == ((void*)0)) {



   tdfx_info->piorid = 0;
  }
  else {
   tdfx_info->piorid = rid;
  }
 } else {
   tdfx_info->addr1 = 0;
   tdfx_info->memrange2 = ((void*)0);
   tdfx_info->piorange = ((void*)0);
 }






 if(tdfx_setmtrr(dev) != 0) {



  return -1;
 }







 tdfx_info->devt = make_dev(&tdfx_cdev, device_get_unit(dev),
  UID_ROOT, GID_WHEEL, 0600, "3dfx%x", device_get_unit(dev));
 tdfx_info->devt->si_drv1 = tdfx_info;

 return 0;
}
