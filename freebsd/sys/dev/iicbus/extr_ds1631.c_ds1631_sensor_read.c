
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint16_t ;
struct ds1631_softc {int sc_dev; int sc_addr; int init_done; } ;
typedef int int16_t ;


 int DS1631_TEMP ;
 int ZERO_C_TO_K ;
 int device_printf (int ,char*,int) ;
 int ds1631_init (int ,int ) ;
 int ds1631_read_2 (int ,int ,int ,int*) ;

__attribute__((used)) static int
ds1631_sensor_read(struct ds1631_softc *sc)
{
 uint16_t buf[2];
 uint16_t read;
 int err;

 if (!sc->init_done)
  ds1631_init(sc->sc_dev, sc->sc_addr);

 err = ds1631_read_2(sc->sc_dev, sc->sc_addr, DS1631_TEMP, buf);
 if (err < 0) {
  device_printf(sc->sc_dev, "ds1631 read TEMP failed: %x\n", err);
  return (-1);
 }

 read = *((int16_t *)buf);







 return (((int16_t)(read) >> 6) * 25 / 10 + ZERO_C_TO_K);
}
