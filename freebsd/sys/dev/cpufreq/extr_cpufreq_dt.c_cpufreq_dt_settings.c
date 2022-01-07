
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_dt_softc {int nopp; int * opp; } ;
struct cf_setting {int dummy; } ;
typedef size_t ssize_t ;
typedef int device_t ;


 int DEBUG (int ,char*) ;
 int E2BIG ;
 int EINVAL ;
 int cpufreq_dt_opp_to_setting (int ,int *,struct cf_setting*) ;
 struct cpufreq_dt_softc* device_get_softc (int ) ;

__attribute__((used)) static int
cpufreq_dt_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct cpufreq_dt_softc *sc;
 ssize_t n;

 DEBUG(dev, "cpufreq_dt_settings\n");
 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);

 sc = device_get_softc(dev);

 if (*count < sc->nopp) {
  *count = (int)sc->nopp;
  return (E2BIG);
 }

 for (n = 0; n < sc->nopp; n++)
  cpufreq_dt_opp_to_setting(dev, &sc->opp[n], &sets[n]);

 *count = (int)sc->nopp;

 return (0);
}
