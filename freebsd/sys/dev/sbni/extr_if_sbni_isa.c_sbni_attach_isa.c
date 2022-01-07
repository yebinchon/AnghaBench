
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u_int32_t ;
struct sbni_softc {int irq_handle; int * irq_res; TYPE_1__* ifp; int irq_rid; int dev; } ;
struct sbni_flags {int dummy; } ;
typedef int device_t ;
struct TYPE_2__ {int if_xname; } ;


 int ENOENT ;
 int ENXIO ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int RF_ACTIVE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct sbni_softc*,int *) ;
 struct sbni_softc* connect_to_master (struct sbni_softc*) ;
 int device_get_flags (int ) ;
 struct sbni_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*,...) ;
 int sbni_add (struct sbni_softc*) ;
 int sbni_attach (struct sbni_softc*,int,struct sbni_flags) ;
 int sbni_detach (struct sbni_softc*) ;
 int sbni_intr ;
 int sbni_release_resources (struct sbni_softc*) ;

__attribute__((used)) static int
sbni_attach_isa(device_t dev)
{
 struct sbni_softc *sc;
 struct sbni_flags flags;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 sc->irq_res = bus_alloc_resource_any(
     dev, SYS_RES_IRQ, &sc->irq_rid, RF_ACTIVE);



 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "irq conflict!\n");
  sbni_release_resources(sc);
  return (ENOENT);
 }
 *(u_int32_t*)&flags = device_get_flags(dev);

 error = sbni_attach(sc, device_get_unit(dev) * 2, flags);
 if (error) {
  device_printf(dev, "cannot initialize driver\n");
  sbni_release_resources(sc);
  return (error);
 }

 if (sc->irq_res) {
  error = bus_setup_intr(
      dev, sc->irq_res, INTR_TYPE_NET | INTR_MPSAFE,
      ((void*)0), sbni_intr, sc, &sc->irq_handle);
  if (error) {
   device_printf(dev, "bus_setup_intr\n");
   sbni_detach(sc);
   sbni_release_resources(sc);
   return (error);
  }
 }

 return (0);
}
