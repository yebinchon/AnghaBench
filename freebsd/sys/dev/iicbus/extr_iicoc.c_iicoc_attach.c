
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iicoc_softc {int * iicbus; int * mem_res; scalar_t__ mem_rid; int sc_mtx; int dev; } ;
typedef int device_t ;


 int MTX_DEF ;
 int RF_ACTIVE ;
 int SYS_RES_MEMORY ;
 int * bus_alloc_resource_anywhere (int ,int ,scalar_t__*,int,int ) ;
 int bus_generic_attach (int ) ;
 int * device_add_child (int ,char*,int) ;
 struct iicoc_softc* device_get_softc (int ) ;
 int device_get_unit (int ) ;
 int device_printf (int ,char*) ;
 int iicoc_init (int ) ;
 int mtx_init (int *,char*,char*,int ) ;

__attribute__((used)) static int
iicoc_attach(device_t dev)
{
 int bus;
 struct iicoc_softc *sc;

 sc = device_get_softc(dev);
 bus = device_get_unit(dev);

 sc->dev = dev;
 mtx_init(&sc->sc_mtx, "iicoc", "iicoc", MTX_DEF);
 sc->mem_rid = 0;
 sc->mem_res = bus_alloc_resource_anywhere(dev,
     SYS_RES_MEMORY, &sc->mem_rid, 0x100, RF_ACTIVE);

 if (sc->mem_res == ((void*)0)) {
  device_printf(dev, "Could not allocate bus resource.\n");
  return (-1);
 }
 iicoc_init(dev);
 sc->iicbus = device_add_child(dev, "iicbus", -1);
 if (sc->iicbus == ((void*)0)) {
  device_printf(dev, "Could not allocate iicbus instance.\n");
  return (-1);
 }
 bus_generic_attach(dev);

 return (0);
}
