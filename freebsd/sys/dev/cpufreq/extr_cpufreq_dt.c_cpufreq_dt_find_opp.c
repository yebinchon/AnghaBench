
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct cpufreq_dt_softc {size_t nopp; struct cpufreq_dt_opp const* opp; } ;
struct cpufreq_dt_opp {int freq; } ;
typedef size_t ssize_t ;
typedef int device_t ;


 scalar_t__ CPUFREQ_CMP (int ,int ) ;
 int DEBUG (int ,char*,...) ;
 struct cpufreq_dt_softc* device_get_softc (int ) ;

__attribute__((used)) static const struct cpufreq_dt_opp *
cpufreq_dt_find_opp(device_t dev, uint64_t freq)
{
 struct cpufreq_dt_softc *sc;
 ssize_t n;

 sc = device_get_softc(dev);

 DEBUG(dev, "Looking for freq %ju\n", freq);
 for (n = 0; n < sc->nopp; n++)
  if (CPUFREQ_CMP(sc->opp[n].freq, freq))
   return (&sc->opp[n]);

 DEBUG(dev, "Couldn't find one\n");
 return (((void*)0));
}
