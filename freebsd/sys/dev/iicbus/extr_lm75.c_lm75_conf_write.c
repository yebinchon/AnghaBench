
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct lm75_softc {int sc_addr; int sc_dev; scalar_t__ sc_conf; } ;
typedef int buf8 ;


 int LM75_CONF ;
 int LM75_CONF_MASK ;
 scalar_t__ lm75_write (int ,int ,int*,int) ;

__attribute__((used)) static int
lm75_conf_write(struct lm75_softc *sc)
{
 uint8_t buf8[2];

 buf8[0] = LM75_CONF;
 buf8[1] = (uint8_t)sc->sc_conf & LM75_CONF_MASK;
 if (lm75_write(sc->sc_dev, sc->sc_addr, buf8, sizeof(buf8)) < 0)
  return (-1);

 return (0);
}
