
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
typedef int u_int ;
struct agp_i810_softc {int * sc_res; } ;
typedef int device_t ;


 int bus_read_4 (int ,int) ;
 struct agp_i810_softc* device_get_softc (int ) ;

__attribute__((used)) static u_int32_t
agp_i915_read_gtt_pte(device_t dev, u_int index)
{
 struct agp_i810_softc *sc;
 u_int32_t pte;

 sc = device_get_softc(dev);
 pte = bus_read_4(sc->sc_res[1], index * 4);
 return (pte);
}
