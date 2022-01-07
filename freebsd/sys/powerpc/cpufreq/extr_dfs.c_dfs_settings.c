
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dfs_softc {scalar_t__ dfs4; } ;
struct cf_setting {int freq; void* dev; } ;
typedef void* device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int E2BIG ;
 int EINVAL ;
 struct dfs_softc* device_get_softc (void*) ;
 int memset (struct cf_setting*,int ,int) ;

__attribute__((used)) static int
dfs_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct dfs_softc *sc;
 int states;

 sc = device_get_softc(dev);
 states = sc->dfs4 ? 3 : 2;
 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);
 if (*count < states)
  return (E2BIG);


 memset(sets, CPUFREQ_VAL_UNKNOWN, sizeof(*sets) * states);

 sets[0].freq = 10000; sets[0].dev = dev;
 sets[1].freq = 5000; sets[1].dev = dev;
 if (sc->dfs4) {
  sets[2].freq = 2500;
  sets[2].dev = dev;
 }
 *count = states;

 return (0);
}
