
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ntb_plx_softc {scalar_t__ int_res; int int_rid; int int_tag; int link; } ;
typedef int device_t ;


 int NTX_WRITE (struct ntb_plx_softc*,int,int) ;
 int SYS_RES_IRQ ;
 int bus_release_resource (int ,int ,int ,scalar_t__) ;
 int bus_teardown_intr (int ,scalar_t__,int ) ;
 struct ntb_plx_softc* device_get_softc (int ) ;

__attribute__((used)) static void
ntb_plx_teardown_intr(device_t dev)
{
 struct ntb_plx_softc *sc = device_get_softc(dev);

 if (!sc->link)
  NTX_WRITE(sc, 0xfe4, 0xf);

 if (sc->int_res) {
  bus_teardown_intr(dev, sc->int_res, sc->int_tag);
  bus_release_resource(dev, SYS_RES_IRQ, sc->int_rid,
      sc->int_res);
 }
}
