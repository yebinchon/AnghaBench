
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct ad7417_softc {int sc_addr; int sc_dev; } ;
struct ad7417_sensor {int id; int dev; } ;


 scalar_t__ ad7417_get_adc (int ,int ,int*,int) ;
 struct ad7417_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ad7417_adc_read(struct ad7417_sensor *sens)
{
 struct ad7417_softc *sc;
 uint8_t chan;
 int temp;

 sc = device_get_softc(sens->dev);

 switch (sens->id) {
 case 11:
 case 16:
  chan = 1;
  break;
 case 12:
 case 17:
  chan = 2;
  break;
 case 13:
 case 18:
  chan = 3;
  break;
 case 14:
 case 19:
  chan = 4;
  break;
 default:
  chan = 1;
 }

 if (ad7417_get_adc(sc->sc_dev, sc->sc_addr, &temp, chan) < 0)
  return (-1);

 return (temp);
}
