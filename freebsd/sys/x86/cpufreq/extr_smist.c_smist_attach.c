
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct smist_softc {TYPE_1__* sets; void* dev; } ;
typedef void* device_t ;
struct TYPE_2__ {int lat; void* dev; void* power; void* volts; void* freq; } ;


 void* CPUFREQ_VAL_UNKNOWN ;
 int ENXIO ;
 int cpufreq_register (void*) ;
 struct smist_softc* device_get_softc (void*) ;
 scalar_t__ set_ownership (void*) ;

__attribute__((used)) static int
smist_attach(device_t dev)
{
 struct smist_softc *sc;

 sc = device_get_softc(dev);
 sc->dev = dev;


 if (set_ownership(dev) != 0)
  return (ENXIO);


 sc->sets[0].freq = CPUFREQ_VAL_UNKNOWN;
 sc->sets[0].volts = CPUFREQ_VAL_UNKNOWN;
 sc->sets[0].power = CPUFREQ_VAL_UNKNOWN;
 sc->sets[0].lat = 1000;
 sc->sets[0].dev = dev;
 sc->sets[1] = sc->sets[0];

 cpufreq_register(dev);

 return (0);
}
