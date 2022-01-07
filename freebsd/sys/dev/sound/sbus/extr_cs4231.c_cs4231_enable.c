
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cs4231_softc {int sc_enabled; } ;


 int cs4231_power_reset (struct cs4231_softc*,int) ;

__attribute__((used)) static int
cs4231_enable(struct cs4231_softc *sc, int how)
{
 cs4231_power_reset(sc, how);
 sc->sc_enabled = 1;
        return (0);
}
