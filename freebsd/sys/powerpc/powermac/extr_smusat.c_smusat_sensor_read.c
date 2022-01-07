
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct smusat_softc {int sc_last_update; int* sc_cache; } ;
struct smu_sensor {int reg; int type; int dev; } ;
typedef int device_t ;


 int EINVAL ;




 struct smusat_softc* device_get_softc (int ) ;
 int smusat_updatecache (int ) ;
 int time_uptime ;

__attribute__((used)) static int
smusat_sensor_read(struct smu_sensor *sens)
{
 int value, error;
 device_t dev;
 struct smusat_softc *sc;

 dev = sens->dev;
 sc = device_get_softc(dev);
 error = 0;

 if (time_uptime - sc->sc_last_update > 1)
  error = smusat_updatecache(dev);
 if (error)
  return (-error);

 value = (sc->sc_cache[sens->reg*2] << 8) +
     sc->sc_cache[sens->reg*2 + 1];
 if (value == 0xffff) {
  sc->sc_last_update = 0;
  return (-EINVAL);
 }

 switch (sens->type) {
 case 129:

  value <<= 10;

  value = 10*(value >> 16) + ((10*(value & 0xffff)) >> 16) + 2731;
  break;
 case 128:

  value <<= 4;

  value >>= 16;
  break;
 case 131:

  value <<= 8;

  value >>= 16;
  break;
 case 130:

  break;
 }

 return (value);
}
