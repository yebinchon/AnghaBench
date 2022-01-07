
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct lm75_softc {scalar_t__ sc_conf; int sc_addr; int sc_dev; } ;
typedef int buf8 ;


 int LM75_CONF ;
 scalar_t__ lm75_read (int ,int ,int ,scalar_t__*,int) ;

__attribute__((used)) static int
lm75_conf_read(struct lm75_softc *sc)
{
 uint8_t buf8;

 if (lm75_read(sc->sc_dev, sc->sc_addr, LM75_CONF,
     &buf8, sizeof(buf8)) < 0)
  return (-1);
 sc->sc_conf = (uint32_t)buf8;

 return (0);
}
