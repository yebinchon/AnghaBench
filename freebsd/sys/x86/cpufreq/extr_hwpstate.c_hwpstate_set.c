
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwpstate_softc {int cfnum; struct hwpstate_setting* hwpstate_settings; } ;
struct hwpstate_setting {int pstate_id; int freq; } ;
struct cf_setting {int freq; } ;
typedef int device_t ;


 scalar_t__ CPUFREQ_CMP (int ,int ) ;
 int EINVAL ;
 struct hwpstate_softc* device_get_softc (int ) ;
 int hwpstate_goto_pstate (int ,int ) ;

__attribute__((used)) static int
hwpstate_set(device_t dev, const struct cf_setting *cf)
{
 struct hwpstate_softc *sc;
 struct hwpstate_setting *set;
 int i;

 if (cf == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);
 set = sc->hwpstate_settings;
 for (i = 0; i < sc->cfnum; i++)
  if (CPUFREQ_CMP(cf->freq, set[i].freq))
   break;
 if (i == sc->cfnum)
  return (EINVAL);

 return (hwpstate_goto_pstate(dev, set[i].pstate_id));
}
