
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct chipc_softc {scalar_t__ dev; } ;
struct chipc_devinfo {int irq_mapped; int irq; } ;
typedef int device_t ;


 int ENOMEM ;
 int KASSERT (int,char*) ;
 int SYS_RES_IRQ ;
 int bhnd_map_intr (scalar_t__,int ,int *) ;
 int bhnd_unmap_intr (scalar_t__,int ) ;
 int bus_set_resource (int ,int ,int,int ,int) ;
 struct chipc_devinfo* device_get_ivars (int ) ;
 scalar_t__ device_get_parent (int ) ;
 int device_printf (scalar_t__,char*,...) ;

int
chipc_set_irq_resource(struct chipc_softc *sc, device_t child, int rid,
    u_int intr)
{
 struct chipc_devinfo *dinfo;
 int error;

 KASSERT(device_get_parent(child) == sc->dev, ("not a direct child"));
 dinfo = device_get_ivars(child);


 if (dinfo->irq_mapped) {
  device_printf(sc->dev, "irq already mapped for child\n");
  return (ENOMEM);
 }


 if ((error = bhnd_map_intr(sc->dev, intr, &dinfo->irq))) {
  device_printf(sc->dev, "failed to map intr %u: %d\n", intr,
      error);
  return (error);
 }

 dinfo->irq_mapped = 1;


 error = bus_set_resource(child, SYS_RES_IRQ, rid, dinfo->irq, 1);
 if (error) {
  device_printf(sc->dev, "failed to set child irq resource %d to "
      "%ju: %d\n", rid, dinfo->irq, error);

  bhnd_unmap_intr(sc->dev, dinfo->irq);
  return (error);
 }

 return (0);
}
