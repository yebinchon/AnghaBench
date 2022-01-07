
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7418_softc {int sc_curchan; int sc_dev; } ;


 int AD7418_CONF ;
 int AD7418_CONF_CHAN ;
 int ad7418_read_1 (int ,int ) ;
 int ad7418_write_1 (int ,int ,int) ;
 int hz ;
 int tsleep (struct ad7418_softc*,int ,char*,int) ;

__attribute__((used)) static void
ad7418_set_channel(struct ad7418_softc *sc, int chan)
{
 if (sc->sc_curchan == chan)
  return;
 ad7418_write_1(sc->sc_dev, AD7418_CONF,
     (ad7418_read_1(sc->sc_dev, AD7418_CONF) &~ AD7418_CONF_CHAN)|chan);
 sc->sc_curchan = chan;
}
