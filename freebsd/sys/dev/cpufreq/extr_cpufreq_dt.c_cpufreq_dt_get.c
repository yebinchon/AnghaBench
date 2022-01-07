
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cpufreq_dt_softc {int clk; } ;
struct cpufreq_dt_opp {int dummy; } ;
struct cf_setting {int freq; } ;
typedef int device_t ;


 int DEBUG (int ,char*,...) ;
 int ENOENT ;
 int ENXIO ;
 scalar_t__ clk_get_freq (int ,int *) ;
 struct cpufreq_dt_opp* cpufreq_dt_find_opp (int ,int ) ;
 int cpufreq_dt_opp_to_setting (int ,struct cpufreq_dt_opp const*,struct cf_setting*) ;
 struct cpufreq_dt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;

__attribute__((used)) static int
cpufreq_dt_get(device_t dev, struct cf_setting *set)
{
 struct cpufreq_dt_softc *sc;
 const struct cpufreq_dt_opp *opp;
 uint64_t freq;

 sc = device_get_softc(dev);

 DEBUG(dev, "cpufreq_dt_get\n");
 if (clk_get_freq(sc->clk, &freq) != 0)
  return (ENXIO);

 opp = cpufreq_dt_find_opp(dev, freq);
 if (opp == ((void*)0)) {
  device_printf(dev, "Can't find the current freq in opp\n");
  return (ENOENT);
 }

 cpufreq_dt_opp_to_setting(dev, opp, set);

 DEBUG(dev, "Current freq %dMhz\n", set->freq);
 return (0);
}
