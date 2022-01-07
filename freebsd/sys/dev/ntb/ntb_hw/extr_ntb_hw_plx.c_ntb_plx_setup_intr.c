
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_plx_softc {int link; int int_tag; int * int_res; scalar_t__ int_rid; } ;
typedef int device_t ;


 int ENOMEM ;
 int INTR_MPSAFE ;
 int INTR_TYPE_MISC ;
 int NTX_WRITE (struct ntb_plx_softc*,int,int) ;
 int RF_ACTIVE ;
 int RF_SHAREABLE ;
 int SYS_RES_IRQ ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int) ;
 int bus_setup_intr (int ,int *,int,int *,int ,int ,int *) ;
 struct ntb_plx_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,...) ;
 int ntb_plx_isr ;

__attribute__((used)) static int
ntb_plx_setup_intr(device_t dev)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);
 int error;
 sc->int_rid = 0;
 sc->int_res = bus_alloc_resource_any(dev, SYS_RES_IRQ,
     &sc->int_rid, RF_SHAREABLE|RF_ACTIVE);
 if (sc->int_res == ((void*)0)) {
  device_printf(dev, "bus_alloc_resource failed\n");
  return (ENOMEM);
 }
 error = bus_setup_intr(dev, sc->int_res, INTR_MPSAFE | INTR_TYPE_MISC,
     ((void*)0), ntb_plx_isr, dev, &sc->int_tag);
 if (error != 0) {
  device_printf(dev, "bus_setup_intr failed: %d\n", error);
  return (error);
 }

 if (!sc->link) {
  NTX_WRITE(sc, 0xfe0, 0xf);
  NTX_WRITE(sc, 0xfe4, 0x0);
 }
 return (0);
}
