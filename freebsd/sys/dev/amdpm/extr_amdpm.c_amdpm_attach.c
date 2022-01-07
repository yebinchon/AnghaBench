
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_char ;
struct amdpm_softc {int smbus; int lock; int * res; int rid; } ;
typedef int device_t ;


 int AMDPCI_GEN_CONFIG_PM ;
 int AMDPCI_PMBASE ;
 int AMDPCI_PMIOEN ;
 scalar_t__ AMDPM_VENDORID_AMD ;
 int EINVAL ;
 int ENXIO ;
 int MTX_DEF ;
 int NFPCI_PMBASE ;
 int RF_ACTIVE ;
 int SYS_RES_IOPORT ;
 int amdpm_detach (int ) ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_generic_attach (int ) ;
 int device_add_child (int ,char*,int) ;
 int device_get_nameunit (int ) ;
 struct amdpm_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int mtx_init (int *,int ,char*,int ) ;
 scalar_t__ pci_get_vendor (int ) ;
 int pci_read_config (int ,int ,int) ;
 int pci_write_config (int ,int ,int,int) ;

__attribute__((used)) static int
amdpm_attach(device_t dev)
{
 struct amdpm_softc *amdpm_sc = device_get_softc(dev);
 u_char val_b;


 val_b = pci_read_config(dev, AMDPCI_GEN_CONFIG_PM, 1);
 pci_write_config(dev, AMDPCI_GEN_CONFIG_PM, val_b | AMDPCI_PMIOEN, 1);


 if (pci_get_vendor(dev) == AMDPM_VENDORID_AMD)
  amdpm_sc->rid = AMDPCI_PMBASE;
 else
  amdpm_sc->rid = NFPCI_PMBASE;
 amdpm_sc->res = bus_alloc_resource_any(dev, SYS_RES_IOPORT,
  &amdpm_sc->rid, RF_ACTIVE);

 if (amdpm_sc->res == ((void*)0)) {
  device_printf(dev, "could not map i/o space\n");
  return (ENXIO);
 }

 mtx_init(&amdpm_sc->lock, device_get_nameunit(dev), "amdpm", MTX_DEF);


 amdpm_sc->smbus = device_add_child(dev, "smbus", -1);
 if (!amdpm_sc->smbus) {
  amdpm_detach(dev);
  return (EINVAL);
 }

 bus_generic_attach(dev);

 return (0);
}
