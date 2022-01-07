
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmufreq_softc {int minfreq; int maxfreq; } ;
struct cf_setting {void* lat; void* dev; int freq; } ;
typedef void* device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int E2BIG ;
 int EINVAL ;
 void* INT_MAX ;
 struct pmufreq_softc* device_get_softc (void*) ;
 int memset (struct cf_setting*,int ,int) ;

__attribute__((used)) static int
pmufreq_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct pmufreq_softc *sc;

 sc = device_get_softc(dev);
 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);
 if (*count < 2)
  return (E2BIG);


 memset(sets, CPUFREQ_VAL_UNKNOWN, sizeof(*sets) * 2);

 sets[0].freq = sc->maxfreq; sets[0].dev = dev;
 sets[1].freq = sc->minfreq; sets[1].dev = dev;

 sets[0].lat = INT_MAX;
 sets[1].lat = INT_MAX;
 *count = 2;

 return (0);
}
