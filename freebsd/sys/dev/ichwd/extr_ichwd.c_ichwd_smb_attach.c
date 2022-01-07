
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ichwd_softc {int tco_rid; int gc_rid; int smi_rid; int * smi_res; int * gc_res; int * tco_res; int tco_version; int ich_version; } ;
struct ichwd_device {int tco_version; int ich_version; } ;
typedef int * device_t ;


 int ENXIO ;
 int ICH_PMBASE ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 scalar_t__ SMI_BASE ;
 scalar_t__ SMI_LEN ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource (int *,int ,int*,scalar_t__,scalar_t__,scalar_t__,int) ;
 void* bus_alloc_resource_any (int *,int ,int*,int) ;
 int * device_get_parent (int *) ;
 struct ichwd_softc* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int * ichwd_find_smb_dev (int *,struct ichwd_device**) ;
 int * pci_find_dbsf (int ,int ,int,int) ;
 int pci_get_bus (int *) ;
 int pci_get_domain (int *) ;
 int pci_read_config (int *,int ,int) ;

__attribute__((used)) static int
ichwd_smb_attach(device_t dev)
{
 struct ichwd_softc *sc;
 struct ichwd_device *id_p;
 device_t isab, pmdev;
 device_t smb;
 uint32_t acpi_base;

 sc = device_get_softc(dev);
 smb = ichwd_find_smb_dev(device_get_parent(dev), &id_p);
 if (smb == ((void*)0))
  return (ENXIO);

 sc->ich_version = id_p->ich_version;
 sc->tco_version = id_p->tco_version;


 sc->tco_rid = 0;
 sc->tco_res = bus_alloc_resource_any(dev, SYS_RES_IOPORT, &sc->tco_rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->tco_res == ((void*)0)) {
  device_printf(dev, "unable to reserve TCO registers\n");
  return (ENXIO);
 }





 sc->gc_rid = 1;
 sc->gc_res = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->gc_rid,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->gc_res == ((void*)0)) {
  device_printf(dev, "unable to reserve hidden P2SB registers\n");
  return (ENXIO);
 }


 isab = device_get_parent(device_get_parent(dev));
 pmdev = pci_find_dbsf(pci_get_domain(isab), pci_get_bus(isab), 31, 2);
 if (pmdev == ((void*)0)) {
  device_printf(dev, "unable to find Power Management device\n");
  return (ENXIO);
 }
 acpi_base = pci_read_config(pmdev, ICH_PMBASE, 4) & 0xffffff00;
 if (acpi_base == 0) {
  device_printf(dev, "ACPI base address is not set\n");
  return (ENXIO);
 }


 sc->smi_rid = 2;
 sc->smi_res = bus_alloc_resource(dev, SYS_RES_IOPORT, &sc->smi_rid,
     acpi_base + SMI_BASE, acpi_base + SMI_BASE + SMI_LEN - 1, SMI_LEN,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->smi_res == ((void*)0)) {
  device_printf(dev, "unable to reserve SMI registers\n");
  return (ENXIO);
 }

 return (0);
}
