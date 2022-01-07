
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int32_t ;
struct auxio_softc {int sc_flags; int * sc_regh; int * sc_regt; } ;


 int AUXIO_EBUS ;
 size_t AUXIO_PCIO_LED ;
 int bus_space_write_1 (int ,int ,int ,int ) ;
 int bus_space_write_4 (int ,int ,int ,int ) ;

__attribute__((used)) static __inline void
auxio_led_write(struct auxio_softc *sc, u_int32_t v)
{
 if (sc->sc_flags & AUXIO_EBUS)
  bus_space_write_4(sc->sc_regt[AUXIO_PCIO_LED],
      sc->sc_regh[AUXIO_PCIO_LED], 0, v);
 else
  bus_space_write_1(sc->sc_regt[AUXIO_PCIO_LED],
      sc->sc_regh[AUXIO_PCIO_LED], 0, v);
}
