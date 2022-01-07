
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
struct lm75_softc {int sc_addr; int sc_dev; } ;
typedef int buf8 ;


 int LM75_MAX_TEMP ;
 int LM75_MIN_TEMP ;
 int TZ_ZEROC ;
 scalar_t__ lm75_write (int ,int ,int*,int) ;

__attribute__((used)) static int
lm75_temp_write(struct lm75_softc *sc, uint8_t reg, int temp)
{
 uint8_t buf8[3];
 uint16_t buf;

 temp = (temp - TZ_ZEROC) / 10;
 if (temp > LM75_MAX_TEMP)
  temp = LM75_MAX_TEMP;
 if (temp < LM75_MIN_TEMP)
  temp = LM75_MIN_TEMP;

 buf = (uint16_t)temp;
 buf <<= 8;

 buf8[0] = reg;
 buf8[1] = buf >> 8;
 buf8[2] = buf & 0xff;
 if (lm75_write(sc->sc_dev, sc->sc_addr, buf8, sizeof(buf8)) < 0)
  return (-1);

 return (0);
}
