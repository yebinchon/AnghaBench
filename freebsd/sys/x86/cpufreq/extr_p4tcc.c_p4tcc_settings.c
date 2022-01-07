
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct p4tcc_softc {int set_count; } ;
struct cf_setting {int dev; int freq; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int E2BIG ;
 int EINVAL ;
 int TCC_NUM_SETTINGS ;
 int TCC_SPEED_PERCENT (int) ;
 struct p4tcc_softc* device_get_softc (int ) ;
 int memset (struct cf_setting*,int ,int) ;

__attribute__((used)) static int
p4tcc_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct p4tcc_softc *sc;
 int i, val;

 sc = device_get_softc(dev);
 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);
 if (*count < sc->set_count)
  return (E2BIG);


 memset(sets, CPUFREQ_VAL_UNKNOWN, sizeof(*sets) * sc->set_count);
 val = TCC_NUM_SETTINGS;
 for (i = 0; i < sc->set_count; i++, val--) {
  sets[i].freq = TCC_SPEED_PERCENT(val);
  sets[i].dev = dev;
 }
 *count = sc->set_count;

 return (0);
}
