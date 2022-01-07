
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pcr_softc {int nmodes; } ;
struct cf_setting {int freq; void* dev; } ;
typedef void* device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int E2BIG ;
 int EINVAL ;
 struct pcr_softc* device_get_softc (void*) ;
 int memset (struct cf_setting*,int ,int) ;

__attribute__((used)) static int
pcr_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct pcr_softc *sc;

 sc = device_get_softc(dev);
 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);
 if (*count < sc->nmodes)
  return (E2BIG);


 memset(sets, CPUFREQ_VAL_UNKNOWN, sizeof(*sets) * sc->nmodes);

 sets[0].freq = 10000; sets[0].dev = dev;
 sets[1].freq = 5000; sets[1].dev = dev;
 if (sc->nmodes > 2) {
  sets[2].freq = 2500;
  sets[2].dev = dev;
 }
 *count = sc->nmodes;

 return (0);
}
