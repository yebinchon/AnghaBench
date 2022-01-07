
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint32_t ;
struct lm75_softc {int sc_conf; int sc_hwtype; int sc_addr; int sc_dev; } ;
typedef int buf8 ;


 int HWTYPE_LM75A ;
 int LM75_TEST_PATTERN ;
 scalar_t__ lm75_conf_read (struct lm75_softc*) ;
 scalar_t__ lm75_conf_write (struct lm75_softc*) ;
 scalar_t__ lm75_read (int ,int ,int,int*,int) ;

__attribute__((used)) static int
lm75_type_detect(struct lm75_softc *sc)
{
 int i, lm75a;
 uint8_t buf8;
 uint32_t conf;


 if (lm75_conf_read(sc) != 0)
  return (-1);
 conf = sc->sc_conf;





 sc->sc_conf = LM75_TEST_PATTERN;
 if (lm75_conf_write(sc) != 0)
  return (-1);





 if (lm75_conf_read(sc) != 0)
  return (-1);
 if (sc->sc_conf != LM75_TEST_PATTERN)
  return (-1);







 lm75a = 0;
 for (i = 4; i <= 6; i++) {
  if (lm75_read(sc->sc_dev, sc->sc_addr, i,
      &buf8, sizeof(buf8)) < 0)
   return (-1);
  if (buf8 != LM75_TEST_PATTERN && buf8 != 0xff)
   return (-1);
  if (buf8 == 0xff)
   lm75a++;
 }
 if (lm75a == 3)
  sc->sc_hwtype = HWTYPE_LM75A;


 sc->sc_conf = conf;
 if (lm75_conf_write(sc) != 0)
  return (-1);

 return (0);
}
