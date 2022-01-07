
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ds1775_softc {int sc_addr; int sc_dev; } ;
typedef int int16_t ;


 int DS1775_TEMP ;
 int ZERO_C_TO_K ;
 int ds1775_read_2 (int ,int ,int ,int*) ;

__attribute__((used)) static int
ds1775_sensor_read(struct ds1775_softc *sc)
{
 uint16_t buf[2];
 uint16_t read;
 int err;

 err = ds1775_read_2(sc->sc_dev, sc->sc_addr, DS1775_TEMP, buf);
 if (err < 0)
  return (-1);

 read = *((int16_t *)buf);




 return (((int16_t)(read) >> 7) * 5 + ZERO_C_TO_K);
}
