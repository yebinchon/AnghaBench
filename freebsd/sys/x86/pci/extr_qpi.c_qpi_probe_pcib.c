
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct qpi_device {int qd_pcibus; } ;
typedef int * device_t ;


 int * BUS_ADD_CHILD (int *,int ,char*,int) ;
 int EEXIST ;
 int ENOENT ;
 int ENXIO ;
 int M_QPI ;
 int M_WAITOK ;
 int PCIR_DEVVENDOR ;
 int PCI_SLOTMAX ;
 scalar_t__ bootverbose ;
 int device_get_nameunit (int *) ;
 int device_printf (int *,char*,int,int,int) ;
 int device_set_ivars (int *,struct qpi_device*) ;
 struct qpi_device* malloc (int,int ,int ) ;
 int panic (char*,int ,int) ;
 int pci_cfgregread (int,int,int ,int ,int) ;
 int * pci_find_bsf (int,int ,int ) ;

__attribute__((used)) static int
qpi_probe_pcib(device_t dev, int bus)
{
 struct qpi_device *qdev;
 device_t child;
 uint32_t devid;
 int s;





 if (pci_find_bsf(bus, 0, 0) != ((void*)0))
  return (EEXIST);






 for (s = 0; s <= PCI_SLOTMAX; s++) {
  devid = pci_cfgregread(bus, s, 0, PCIR_DEVVENDOR, 4);
  if (devid != 0xffffffff)
   break;
 }
 if (devid == 0xffffffff)
  return (ENOENT);

 if ((devid & 0xffff) != 0x8086) {
  if (bootverbose)
   device_printf(dev,
       "Device at pci%d.%d.0 has non-Intel vendor 0x%x\n",
       bus, s, devid & 0xffff);
  return (ENXIO);
 }

 child = BUS_ADD_CHILD(dev, 0, "pcib", -1);
 if (child == ((void*)0))
  panic("%s: failed to add pci bus %d", device_get_nameunit(dev),
      bus);
 qdev = malloc(sizeof(struct qpi_device), M_QPI, M_WAITOK);
 qdev->qd_pcibus = bus;
 device_set_ivars(child, qdev);
 return (0);
}
