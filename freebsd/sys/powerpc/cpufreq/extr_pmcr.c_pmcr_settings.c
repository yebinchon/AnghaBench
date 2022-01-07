
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcr_softc {int dummy; } ;
struct cf_setting {int* spec; int dev; int freq; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int E2BIG ;
 int EINVAL ;
 struct pmcr_softc* device_get_softc (int ) ;
 int memset (struct cf_setting*,int ,int) ;
 int npstates ;
 int * pstate_freqs ;
 int* pstate_ids ;

__attribute__((used)) static int
pmcr_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct pmcr_softc *sc;
 int i;

 sc = device_get_softc(dev);
 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);
 if (*count < npstates)
  return (E2BIG);


 memset(sets, CPUFREQ_VAL_UNKNOWN, sizeof(*sets) * npstates);

 for (i = 0; i < npstates; i++) {
  sets[i].freq = pstate_freqs[i];
  sets[i].spec[0] = pstate_ids[i];
  sets[i].spec[1] = i;
  sets[i].dev = dev;
 }
 *count = npstates;

 return (0);
}
