
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct max6690_softc {int sc_addr; int sc_dev; } ;
struct max6690_sensor {int id; int dev; } ;


 int MAX6690_EEXT_TEMP ;
 int MAX6690_EXT_TEMP ;
 int MAX6690_IEXT_TEMP ;
 int MAX6690_INT_TEMP ;
 int MAX6690_TEMP_MASK ;
 int ZERO_C_TO_K ;
 struct max6690_softc* device_get_softc (int ) ;
 int max6690_read (int ,int ,int,int*) ;

__attribute__((used)) static int
max6690_sensor_read(struct max6690_sensor *sens)
{
 uint8_t reg_int = 0, reg_ext = 0;
 uint8_t integer = 0;
 uint8_t fraction = 0;
 int err, temp;

 struct max6690_softc *sc;

 sc = device_get_softc(sens->dev);


 if ((sens->id % 2) == 0) {
  reg_int = MAX6690_INT_TEMP;
  reg_ext = MAX6690_IEXT_TEMP;
 } else {
  reg_int = MAX6690_EXT_TEMP;
  reg_ext = MAX6690_EEXT_TEMP;
 }

 err = max6690_read(sc->sc_dev, sc->sc_addr, reg_int, &integer);

 if (err < 0)
  return (-1);

 err = max6690_read(sc->sc_dev, sc->sc_addr, reg_ext, &fraction);

 if (err < 0)
  return (-1);

 fraction &= MAX6690_TEMP_MASK;




 temp = (integer * 10) + (fraction >> 5) * 10 / 8;

 return (temp + ZERO_C_TO_K);
}
