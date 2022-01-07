
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7418_softc {scalar_t__ sc_lastupdate; int sc_curtemp; int sc_curvolt; int sc_dev; int sc_lock; } ;


 int AD7418_CHAN_TEMP ;
 int AD7418_CHAN_VOLT ;
 int AD7418_TEMP ;
 int AD7418_VOLT ;
 int SA_XLOCKED ;
 int ad7418_read_2 (int ,int ) ;
 int ad7418_set_channel (struct ad7418_softc*,int ) ;
 scalar_t__ hz ;
 int sx_assert (int *,int ) ;
 scalar_t__ ticks ;

__attribute__((used)) static void
ad7418_update(struct ad7418_softc *sc)
{
 int v;

 sx_assert(&sc->sc_lock, SA_XLOCKED);

 if (ticks - sc->sc_lastupdate > hz) {
  ad7418_set_channel(sc, AD7418_CHAN_TEMP);
  v = ad7418_read_2(sc->sc_dev, AD7418_TEMP);
  if (v >= 0)
   sc->sc_curtemp = v;
  ad7418_set_channel(sc, AD7418_CHAN_VOLT);
  v = ad7418_read_2(sc->sc_dev, AD7418_VOLT);
  if (v >= 0)
   sc->sc_curvolt = v;
  sc->sc_lastupdate = ticks;
 }
}
