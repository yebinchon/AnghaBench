
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;
struct hwpstate_softc {size_t cfnum; struct hwpstate_setting* hwpstate_settings; } ;
struct hwpstate_setting {int lat; int power; int volts; int freq; } ;
struct cf_setting {int dev; int lat; int power; int volts; int freq; } ;
typedef int device_t ;


 int EINVAL ;
 int MSR_AMD_10H_11H_STATUS ;
 struct hwpstate_softc* device_get_softc (int ) ;
 size_t rdmsr (int ) ;

__attribute__((used)) static int
hwpstate_get(device_t dev, struct cf_setting *cf)
{
 struct hwpstate_softc *sc;
 struct hwpstate_setting set;
 uint64_t msr;

 sc = device_get_softc(dev);
 if (cf == ((void*)0))
  return (EINVAL);
 msr = rdmsr(MSR_AMD_10H_11H_STATUS);
 if (msr >= sc->cfnum)
  return (EINVAL);
 set = sc->hwpstate_settings[msr];

 cf->freq = set.freq;
 cf->volts = set.volts;
 cf->power = set.power;
 cf->lat = set.lat;
 cf->dev = dev;
 return (0);
}
