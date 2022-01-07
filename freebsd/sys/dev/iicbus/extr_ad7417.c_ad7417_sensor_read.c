
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ad7417_softc {int sc_addr; int sc_dev; int init_done; } ;
struct ad7417_sensor {scalar_t__ type; int dev; } ;


 scalar_t__ ADC7417_TEMP_SENSOR ;
 scalar_t__ ZERO_C_TO_K ;
 int ad7417_adc_read (struct ad7417_sensor*) ;
 scalar_t__ ad7417_get_temp (int ,int ,int*) ;
 scalar_t__ ad7417_init_adc (int ,int ) ;
 struct ad7417_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ad7417_sensor_read(struct ad7417_sensor *sens)
{
 struct ad7417_softc *sc;
 int temp;

 sc = device_get_softc(sens->dev);


 if (!sc->init_done)
  if (ad7417_init_adc(sc->sc_dev, sc->sc_addr) < 0)
   return (-1);

 if (sens->type == ADC7417_TEMP_SENSOR) {
  if (ad7417_get_temp(sc->sc_dev, sc->sc_addr, &temp) < 0)
   return (-1);
  temp += ZERO_C_TO_K;
 } else {
  temp = ad7417_adc_read(sens);
 }
 return (temp);
}
