
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct lm75_softc {scalar_t__ sc_hwtype; int sc_addr; int sc_dev; } ;
typedef int int16_t ;
typedef int buf8 ;


 scalar_t__ HWTYPE_LM75A ;
 int LM75A_TEMP_MASK ;
 int LM75_0125C ;
 int LM75_0250C ;
 int LM75_0500C ;
 int LM75_NEG_BIT ;
 int LM75_TEMP_MASK ;
 scalar_t__ TZ_ZEROC ;
 scalar_t__ lm75_read (int ,int ,int,int*,int) ;

__attribute__((used)) static int
lm75_temp_read(struct lm75_softc *sc, uint8_t reg, int *temp)
{
 uint8_t buf8[2];
 uint16_t buf;
 int neg, t;

 if (lm75_read(sc->sc_dev, sc->sc_addr, reg, buf8, sizeof(buf8)) < 0)
  return (-1);
 buf = (uint16_t)((buf8[0] << 8) | (buf8[1] & 0xff));





 neg = 0;
 if (buf & LM75_NEG_BIT) {
  if (sc->sc_hwtype == HWTYPE_LM75A)
   buf = ~(buf & LM75A_TEMP_MASK) + 1;
  else
   buf = ~(buf & LM75_TEMP_MASK) + 1;
  neg = 1;
 }
 *temp = ((int16_t)buf >> 8) * 10;
 t = 0;
 if (sc->sc_hwtype == HWTYPE_LM75A) {
  if (buf & LM75_0125C)
   t += 125;
  if (buf & LM75_0250C)
   t += 250;
 }
 if (buf & LM75_0500C)
  t += 500;
 t /= 100;
 *temp += t;
 if (neg)
  *temp = -(*temp);
 *temp += TZ_ZEROC;

 return (0);
}
