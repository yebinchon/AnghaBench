
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rbled_softc {int sc_ledpin; int sc_gpio; } ;


 int GPIO_PIN_SET (int ,int ,int) ;

__attribute__((used)) static void
rbled_toggle(void *priv, int onoff)
{
 struct rbled_softc *sc = priv;

 GPIO_PIN_SET(sc->sc_gpio, sc->sc_ledpin, onoff);
}
