
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int32_t ;
struct sbni_softc {struct sbni_softc* slave_sc; int irq_handle; int * irq_res; int irq_rid; int dev; } ;
struct sbni_flags {int dummy; } ;
typedef int device_t ;


 int ENOENT ;
 int INTR_MPSAFE ;
 int INTR_TYPE_NET ;
 int M_DEVBUF ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,int *,int ) ;
 int bus_setup_intr (int ,int *,int,int *,int ,struct sbni_softc*,int *) ;
 struct sbni_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int free (struct sbni_softc*,int ) ;
 int sbni_attach (struct sbni_softc*,int,struct sbni_flags) ;
 int sbni_detach (struct sbni_softc*) ;
 int sbni_intr ;
 int sbni_release_resources (struct sbni_softc*) ;

__attribute__((used)) static int
sbni_pci_attach(device_t dev)
{
 struct sbni_softc *sc;
 struct sbni_flags flags;
 int error;

 sc = device_get_softc(dev);
 sc->dev = dev;

 sc->irq_res = bus_alloc_resource_any(dev, SYS_RES_IRQ, &sc->irq_rid,
          RF_SHAREABLE);

 if (sc->irq_res == ((void*)0)) {
  device_printf(dev, "cannot claim irq!\n");
  error = ENOENT;
  goto attach_failed;
 }

 *(u_int32_t*)&flags = 0;

 error = sbni_attach(sc, device_get_unit(dev) * 2, flags);
 if (error) {
  device_printf(dev, "cannot initialize driver\n");
  goto attach_failed;
 }
 if (sc->slave_sc) {
  error = sbni_attach(sc->slave_sc, device_get_unit(dev) * 2 + 1,
      flags);
  if (error) {
   device_printf(dev, "cannot initialize slave\n");
   sbni_detach(sc);
   goto attach_failed;
  }
 }

 if (sc->irq_res) {
  error = bus_setup_intr(dev, sc->irq_res, INTR_TYPE_NET |
      INTR_MPSAFE, ((void*)0), sbni_intr, sc, &sc->irq_handle);
  if (error) {
   device_printf(dev, "bus_setup_intr\n");
   sbni_detach(sc);
   if (sc->slave_sc)
    sbni_detach(sc);
   goto attach_failed;
  }
 }
 return (0);

attach_failed:
 sbni_release_resources(sc);
 if (sc->slave_sc)
  free(sc->slave_sc, M_DEVBUF);
 return (error);
}
