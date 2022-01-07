
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uintmax_t ;
struct bhndb_pci_softc {int dev; } ;
struct bhndb_devinfo {int addrspace; } ;
typedef int * device_t ;
typedef scalar_t__ bus_size_t ;


 int BHNDB_ADDRSPACE_NATIVE ;
 scalar_t__ BHND_PROBE_ORDER_EARLY ;
 scalar_t__ BHND_PROBE_ROOT ;
 int * BUS_ADD_CHILD (int ,scalar_t__,char*,int) ;
 int ENXIO ;
 int SYS_RES_MEMORY ;
 int bhndb_pci_sprom_addr (struct bhndb_pci_softc*) ;
 scalar_t__ bhndb_pci_sprom_size (struct bhndb_pci_softc*) ;
 scalar_t__ bootverbose ;
 int bus_set_resource (int *,int ,int ,int ,scalar_t__) ;
 struct bhndb_devinfo* device_get_ivars (int *) ;
 int device_printf (int ,char*,...) ;

__attribute__((used)) static int
bhndb_pci_add_children(struct bhndb_pci_softc *sc)
{
 bus_size_t nv_sz;
 int error;





 nv_sz = bhndb_pci_sprom_size(sc);
 if (nv_sz > 0) {
  struct bhndb_devinfo *dinfo;
  device_t child;

  if (bootverbose) {
   device_printf(sc->dev, "found SPROM (%ju bytes)\n",
       (uintmax_t)nv_sz);
  }



  child = BUS_ADD_CHILD(sc->dev,
      BHND_PROBE_ROOT + BHND_PROBE_ORDER_EARLY, "bhnd_nvram", -1);
  if (child == ((void*)0)) {
   device_printf(sc->dev, "failed to add sprom device\n");
   return (ENXIO);
  }



  dinfo = device_get_ivars(child);
  dinfo->addrspace = BHNDB_ADDRSPACE_NATIVE;

  error = bus_set_resource(child, SYS_RES_MEMORY, 0,
      bhndb_pci_sprom_addr(sc), nv_sz);
  if (error) {
   device_printf(sc->dev,
       "failed to register sprom resources\n");
   return (error);
  }
 }

 return (0);
}
