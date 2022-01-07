
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned int uint32_t ;
struct agp_i810_softc {int * sc_res; } ;
typedef int device_t ;


 int AGP_I830_HIC ;
 int DELAY (int) ;
 unsigned int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,unsigned int) ;
 struct agp_i810_softc* device_get_softc (int ) ;
 int pmap_invalidate_cache () ;

__attribute__((used)) static void
agp_i830_chipset_flush(device_t dev)
{
 struct agp_i810_softc *sc;
 uint32_t hic;
 int i;

 sc = device_get_softc(dev);
 pmap_invalidate_cache();
 hic = bus_read_4(sc->sc_res[0], AGP_I830_HIC);
 bus_write_4(sc->sc_res[0], AGP_I830_HIC, hic | (1U << 31));
 for (i = 0; i < 20000 ; i++) {
  hic = bus_read_4(sc->sc_res[0], AGP_I830_HIC);
  if ((hic & (1U << 31)) == 0)
   break;
  DELAY(50);
 }
}
