
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ichwd_softc {int tco_version; int smi_rid; int tco_rid; int * gcs_res; scalar_t__ gcs_rid; int * tco_res; int * smi_res; int ich_version; int * ich; } ;
struct ichwd_device {int tco_version; int ich_version; } ;
typedef int * device_t ;


 int ENXIO ;
 int ICH_PMBASE ;
 unsigned int ICH_PMBASE_MASK ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 scalar_t__ SMI_BASE ;
 scalar_t__ SMI_LEN ;
 int SYS_RES_IOPORT ;
 int SYS_RES_MEMORY ;
 scalar_t__ TCO_BASE ;
 scalar_t__ TCO_LEN ;
 void* bus_alloc_resource (int *,int ,int*,scalar_t__,scalar_t__,scalar_t__,int) ;
 int * bus_alloc_resource_any (int *,int ,scalar_t__*,int) ;
 int device_get_parent (int *) ;
 struct ichwd_softc* device_get_softc (int *) ;
 int device_printf (int *,char*) ;
 int * ichwd_find_ich_lpc_bridge (int ,struct ichwd_device**) ;
 unsigned int pci_read_config (int *,int ,int) ;

__attribute__((used)) static int
ichwd_lpc_attach(device_t dev)
{
 struct ichwd_softc *sc;
 struct ichwd_device *id_p;
 device_t ich;
 unsigned int pmbase = 0;

 sc = device_get_softc(dev);

 ich = ichwd_find_ich_lpc_bridge(device_get_parent(dev), &id_p);
 if (ich == ((void*)0))
  return (ENXIO);

 sc->ich = ich;
 sc->ich_version = id_p->ich_version;
 sc->tco_version = id_p->tco_version;


 pmbase = pci_read_config(ich, ICH_PMBASE, 2) & ICH_PMBASE_MASK;
 if (pmbase == 0) {
  device_printf(dev, "ICH PMBASE register is empty\n");
  return (ENXIO);
 }


 sc->smi_rid = 0;
 sc->smi_res = bus_alloc_resource(dev, SYS_RES_IOPORT, &sc->smi_rid,
     pmbase + SMI_BASE, pmbase + SMI_BASE + SMI_LEN - 1, SMI_LEN,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->smi_res == ((void*)0)) {
  device_printf(dev, "unable to reserve SMI registers\n");
  return (ENXIO);
 }

 sc->tco_rid = 1;
 sc->tco_res = bus_alloc_resource(dev, SYS_RES_IOPORT, &sc->tco_rid,
     pmbase + TCO_BASE, pmbase + TCO_BASE + TCO_LEN - 1, TCO_LEN,
     RF_ACTIVE | RF_SHAREABLE);
 if (sc->tco_res == ((void*)0)) {
  device_printf(dev, "unable to reserve TCO registers\n");
  return (ENXIO);
 }

 sc->gcs_rid = 0;
 if (sc->tco_version >= 2) {
  sc->gcs_res = bus_alloc_resource_any(ich, SYS_RES_MEMORY,
      &sc->gcs_rid, RF_ACTIVE|RF_SHAREABLE);
  if (sc->gcs_res == ((void*)0)) {
   device_printf(dev, "unable to reserve GCS registers\n");
   return (ENXIO);
  }
 }

 return (0);
}
