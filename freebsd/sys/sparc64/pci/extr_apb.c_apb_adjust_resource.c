
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource {int dummy; } ;
struct apb_softc {int sc_memmap; int sc_iomap; } ;
typedef int rman_res_t ;
typedef int device_t ;


 int APB_IO_SCALE ;
 int APB_MEM_SCALE ;
 int ENXIO ;


 int apb_checkrange (int ,int ,int ,int ) ;
 int bus_generic_adjust_resource (int ,int ,int,struct resource*,int ,int ) ;
 struct apb_softc* device_get_softc (int ) ;

__attribute__((used)) static int
apb_adjust_resource(device_t dev, device_t child, int type,
    struct resource *r, rman_res_t start, rman_res_t end)
{
 struct apb_softc *sc;

 sc = device_get_softc(dev);
 switch (type) {
 case 129:
  if (!apb_checkrange(sc->sc_iomap, APB_IO_SCALE, start, end))
   return (ENXIO);
  break;
 case 128:
  if (!apb_checkrange(sc->sc_memmap, APB_MEM_SCALE, start, end))
   return (ENXIO);
  break;
 }
 return (bus_generic_adjust_resource(dev, child, type, r, start, end));
}
