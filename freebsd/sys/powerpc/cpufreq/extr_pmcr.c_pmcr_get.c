
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmcr_softc {int dummy; } ;
struct cf_setting {int* spec; int dev; int freq; } ;
typedef int register_t ;
typedef int device_t ;


 int CPUFREQ_VAL_UNKNOWN ;
 int EINVAL ;
 int PMCR_LOWERPS_MASK ;
 int PMCR_LOWERPS_SHIFT ;
 int SPR_PMCR ;
 struct pmcr_softc* device_get_softc (int ) ;
 int memset (struct cf_setting*,int ,int) ;
 int mfspr (int ) ;
 int npstates ;
 int * pstate_freqs ;
 int* pstate_ids ;

__attribute__((used)) static int
pmcr_get(device_t dev, struct cf_setting *set)
{
 struct pmcr_softc *sc;
 register_t pmcr;
 int i, pstate;

 if (set == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);

 memset(set, CPUFREQ_VAL_UNKNOWN, sizeof(*set));

 pmcr = mfspr(SPR_PMCR);

 pstate = (pmcr & PMCR_LOWERPS_MASK) >> PMCR_LOWERPS_SHIFT;

 for (i = 0; i < npstates && pstate_ids[i] != pstate; i++)
  ;

 if (i == npstates)
  return (EINVAL);

 set->spec[0] = pstate;
 set->spec[1] = i;
 set->freq = pstate_freqs[i];

 set->dev = dev;

 return (0);
}
