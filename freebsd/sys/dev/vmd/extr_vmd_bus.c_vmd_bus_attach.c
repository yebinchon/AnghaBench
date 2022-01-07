
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vmd_softc {int vmd_io_resource; int * vmd_regs_resource; } ;
struct pci_devinfo {int resources; } ;
typedef scalar_t__ rman_res_t ;
typedef int device_t ;


 int ENOENT ;
 scalar_t__ PCI_DOMAINMAX ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int bus_generic_attach (int ) ;
 int device_get_parent (int ) ;
 struct vmd_softc* device_get_softc (int ) ;
 scalar_t__ device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int pci_add_child (int ,struct pci_devinfo*) ;
 struct pci_devinfo* pci_read_device (int ,int ,scalar_t__,int,int,int) ;
 int resource_list_add_next (int *,int ,scalar_t__,scalar_t__,scalar_t__) ;
 scalar_t__ rman_get_end (int ) ;
 scalar_t__ rman_get_start (int ) ;

__attribute__((used)) static int
vmd_bus_attach(device_t dev)
{
 struct vmd_softc *sc;
 struct pci_devinfo *dinfo;
 rman_res_t start, end;
 int b, s, f;

 sc = device_get_softc(device_get_parent(dev));


 b = s = f = 0;
 dinfo = pci_read_device(device_get_parent(dev), dev,
      PCI_DOMAINMAX - device_get_unit(device_get_parent(dev)),
      b, s, f);
 if (dinfo == ((void*)0)) {
  device_printf(dev, "Cannot allocate dinfo!\n");
  return (ENOENT);
 }

 pci_add_child(dev, dinfo);

 start = rman_get_start(sc->vmd_regs_resource[1]);
 end = rman_get_end(sc->vmd_regs_resource[1]);
 resource_list_add_next(&dinfo->resources, SYS_RES_MEMORY, start, end,
     end - start + 1);

 start = rman_get_start(sc->vmd_io_resource);
 end = rman_get_end(sc->vmd_io_resource);
 resource_list_add_next(&dinfo->resources, SYS_RES_IOPORT, start, end,
     end - start + 1);

 bus_generic_attach(dev);

 return (0);
}
