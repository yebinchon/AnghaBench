
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hrowpic_softc {int * sc_rres; int sc_bh; int sc_bt; scalar_t__ sc_rrid; int sc_dev; } ;
typedef int device_t ;


 int ENXIO ;
 int FALSE ;
 int HPIC_CLEAR ;
 int HPIC_ENABLE ;
 int HPIC_PRIMARY ;
 int HPIC_SECONDARY ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_any (int ,int ,scalar_t__*,int ) ;
 struct hrowpic_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int hrowpic_write_reg (struct hrowpic_softc*,int ,int ,int) ;
 int ofw_bus_get_node (int ) ;
 int powerpc_register_pic (int ,int ,int,int ,int ) ;
 int rman_get_bushandle (int *) ;
 int rman_get_bustag (int *) ;

__attribute__((used)) static int
hrowpic_attach(device_t dev)
{
 struct hrowpic_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_dev = dev;

 sc->sc_rrid = 0;
 sc->sc_rres = bus_alloc_resource_any(dev, SYS_RES_MEMORY, &sc->sc_rrid,
     RF_ACTIVE);

 if (sc->sc_rres == ((void*)0)) {
  device_printf(dev, "Could not alloc mem resource!\n");
  return (ENXIO);
 }

 sc->sc_bt = rman_get_bustag(sc->sc_rres);
 sc->sc_bh = rman_get_bushandle(sc->sc_rres);




 hrowpic_write_reg(sc, HPIC_ENABLE, HPIC_PRIMARY, 0);
 hrowpic_write_reg(sc, HPIC_CLEAR, HPIC_PRIMARY, 0xffffffff);
 hrowpic_write_reg(sc, HPIC_ENABLE, HPIC_SECONDARY, 0);
 hrowpic_write_reg(sc, HPIC_CLEAR, HPIC_SECONDARY, 0xffffffff);

 powerpc_register_pic(dev, ofw_bus_get_node(dev), 64, 0, FALSE);
 return (0);
}
