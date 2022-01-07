
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct fhc_softc {int * sc_memres; } ;


 int FHC_CTRL ;
 int FHC_CTRL_AOFF ;
 int FHC_CTRL_BOFF ;
 int FHC_CTRL_RLED ;
 int FHC_CTRL_SLINE ;
 size_t FHC_INTERNAL ;
 int bus_read_4 (int ,int ) ;
 int bus_write_4 (int ,int ,int) ;

__attribute__((used)) static void
fhc_led_func(void *arg, int onoff)
{
 struct fhc_softc *sc;
 uint32_t ctrl;

 sc = (struct fhc_softc *)arg;

 ctrl = bus_read_4(sc->sc_memres[FHC_INTERNAL], FHC_CTRL);
 if (onoff)
  ctrl |= FHC_CTRL_RLED;
 else
  ctrl &= ~FHC_CTRL_RLED;
 ctrl &= ~(FHC_CTRL_AOFF | FHC_CTRL_BOFF | FHC_CTRL_SLINE);
 bus_write_4(sc->sc_memres[FHC_INTERNAL], FHC_CTRL, ctrl);
 (void)bus_read_4(sc->sc_memres[FHC_INTERNAL], FHC_CTRL);
}
