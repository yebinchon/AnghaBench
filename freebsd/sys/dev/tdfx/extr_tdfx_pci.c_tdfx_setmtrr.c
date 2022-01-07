
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_2__ {int mr_len; int mr_base; int mr_flags; int mr_owner; } ;
struct tdfx_softc {int addr0; int addr1; TYPE_1__ mrdesc; } ;
typedef int device_t ;


 int MDF_UNCACHEABLE ;
 int MDF_WRITECOMBINE ;
 int MEMRANGE_SET_UPDATE ;
 scalar_t__ PCI_DEVICE_3DFX_BANSHEE ;
 scalar_t__ PCI_DEVICE_3DFX_VOODOO1 ;
 scalar_t__ PCI_DEVICE_3DFX_VOODOO2 ;
 scalar_t__ PCI_DEVICE_3DFX_VOODOO3 ;
 int bcopy (char*,int *,int) ;
 struct tdfx_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int mem_range_attr_set (TYPE_1__*,int*) ;
 scalar_t__ pci_get_devid (int ) ;

__attribute__((used)) static int
tdfx_setmtrr(device_t dev) {






 int retval = 0, act;
 struct tdfx_softc *tdfx_info = device_get_softc(dev);


 if((pci_get_devid(dev) == PCI_DEVICE_3DFX_VOODOO1) || (pci_get_devid(dev) ==
   PCI_DEVICE_3DFX_VOODOO2)) {
  tdfx_info->mrdesc.mr_len = 0x400000;



  tdfx_info->mrdesc.mr_base = tdfx_info->addr0 & 0xfffe0000;
 }
 else if((pci_get_devid(dev) == PCI_DEVICE_3DFX_VOODOO3) ||
   (pci_get_devid(dev) == PCI_DEVICE_3DFX_BANSHEE)) {
  tdfx_info->mrdesc.mr_len = 0x1000000;



  tdfx_info->mrdesc.mr_base = tdfx_info->addr1 & 0xfffe0000;
 }
 else
   return 0;







 tdfx_info->mrdesc.mr_flags = MDF_WRITECOMBINE;
 bcopy("tdfx", &tdfx_info->mrdesc.mr_owner, 4);
 act = MEMRANGE_SET_UPDATE;
 retval = mem_range_attr_set(&tdfx_info->mrdesc, &act);

 if(retval == 0) {



 } else if((pci_get_devid(dev) == PCI_DEVICE_3DFX_VOODOO2) ||
  (pci_get_devid(dev) == PCI_DEVICE_3DFX_VOODOO1)) {



  tdfx_info->mrdesc.mr_flags = MDF_UNCACHEABLE;

  tdfx_info->mrdesc.mr_len = 0x1000;
 }






 return 0;
}
