
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cpufreq_dt_softc {int clk; int reg; int dev; } ;
struct cpufreq_dt_opp {int uvolt_target; int freq; int uvolt_max; int uvolt_min; } ;
struct cf_setting {int freq; } ;
typedef int device_t ;


 int CLK_SET_ROUND_DOWN ;
 int DEBUG (int ,char*,...) ;
 int EINVAL ;
 int ENOENT ;
 int ENXIO ;
 scalar_t__ clk_get_freq (int ,int*) ;
 int clk_set_freq (int ,int,int ) ;
 struct cpufreq_dt_opp* cpufreq_dt_find_opp (int ,int) ;
 int cpufreq_dt_notify (int ,int) ;
 struct cpufreq_dt_softc* device_get_softc (int ) ;
 int device_printf (int ,char*) ;
 int regulator_get_voltage (int ,int*) ;
 int regulator_set_voltage (int ,int ,int ) ;

__attribute__((used)) static int
cpufreq_dt_set(device_t dev, const struct cf_setting *set)
{
 struct cpufreq_dt_softc *sc;
 const struct cpufreq_dt_opp *opp, *copp;
 uint64_t freq;
 int uvolt, error;

 sc = device_get_softc(dev);

 if (clk_get_freq(sc->clk, &freq) != 0) {
  device_printf(dev, "Can't get current clk freq\n");
  return (ENXIO);
 }

 error = regulator_get_voltage(sc->reg, &uvolt);
 if (error != 0) {







  copp = cpufreq_dt_find_opp(sc->dev, freq);
  if (copp == ((void*)0)) {
   device_printf(dev,
       "Can't find the current freq in opp\n");
   return (ENOENT);
  }
  uvolt = copp->uvolt_target;

 }

 opp = cpufreq_dt_find_opp(sc->dev, set->freq * 1000000);
 if (opp == ((void*)0)) {
  device_printf(dev, "Couldn't find an opp for this freq\n");
  return (EINVAL);
 }
 DEBUG(sc->dev, "Current freq %ju, uvolt: %d\n", freq, uvolt);
 DEBUG(sc->dev, "Target freq %ju, , uvolt: %d\n",
     opp->freq, opp->uvolt_target);

 if (uvolt < opp->uvolt_target) {
  DEBUG(dev, "Changing regulator from %u to %u\n",
      uvolt, opp->uvolt_target);
  error = regulator_set_voltage(sc->reg,
      opp->uvolt_min,
      opp->uvolt_max);
  if (error != 0) {
   DEBUG(dev, "Failed, backout\n");
   return (ENXIO);
  }
 }

 DEBUG(dev, "Setting clk to %ju\n", opp->freq);
 error = clk_set_freq(sc->clk, opp->freq, CLK_SET_ROUND_DOWN);
 if (error != 0) {
  DEBUG(dev, "Failed, backout\n");

  error = regulator_set_voltage(sc->reg,
      copp->uvolt_min,
      copp->uvolt_max);
  return (ENXIO);
 }

 if (uvolt > opp->uvolt_target) {
  DEBUG(dev, "Changing regulator from %u to %u\n",
      uvolt, opp->uvolt_target);
  error = regulator_set_voltage(sc->reg,
      opp->uvolt_min,
      opp->uvolt_max);
  if (error != 0) {
   DEBUG(dev, "Failed to switch regulator to %d\n",
       opp->uvolt_target);

   (void)clk_set_freq(sc->clk, copp->freq, 0);
   return (ENXIO);
  }
 }

 if (clk_get_freq(sc->clk, &freq) == 0)
  cpufreq_dt_notify(dev, freq);

 return (0);
}
