
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hwpstate_softc {int cfnum; struct hwpstate_setting* hwpstate_settings; } ;
struct hwpstate_setting {int lat; int power; int volts; int freq; } ;
struct cf_setting {int dev; int lat; int power; int volts; int freq; } ;
typedef int device_t ;


 int E2BIG ;
 int EINVAL ;
 struct hwpstate_softc* device_get_softc (int ) ;

__attribute__((used)) static int
hwpstate_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct hwpstate_softc *sc;
 struct hwpstate_setting set;
 int i;

 if (sets == ((void*)0) || count == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);
 if (*count < sc->cfnum)
  return (E2BIG);
 for (i = 0; i < sc->cfnum; i++, sets++) {
  set = sc->hwpstate_settings[i];
  sets->freq = set.freq;
  sets->volts = set.volts;
  sets->power = set.power;
  sets->lat = set.lat;
  sets->dev = dev;
 }
 *count = sc->cfnum;

 return (0);
}
