
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cpufreq_dt_softc {int dummy; } ;
struct cpufreq_dt_opp {int freq; int uvolt_target; int clk_latency; } ;
struct cf_setting {int freq; int volts; int dev; int lat; int power; } ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 struct cpufreq_dt_softc* device_get_softc (int ) ;
 int memset (struct cf_setting*,int ,int) ;

__attribute__((used)) static void
cpufreq_dt_opp_to_setting(device_t dev, const struct cpufreq_dt_opp *opp,
    struct cf_setting *set)
{
 struct cpufreq_dt_softc *sc;

 sc = device_get_softc(dev);

 memset(set, 0, sizeof(*set));
 set->freq = opp->freq / 1000000;
 set->volts = opp->uvolt_target / 1000;
 set->power = CPUFREQ_VAL_UNKNOWN;
 set->lat = opp->clk_latency;
 set->dev = dev;
}
