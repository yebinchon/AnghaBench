
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pn_softc {int powernow_max_states; TYPE_1__* powernow_states; int * vid_to_volts; } ;
struct cf_setting {int freq; int lat; int dev; int volts; int power; } ;
typedef int device_t ;
struct TYPE_2__ {int freq; size_t vid; int power; } ;


 int E2BIG ;
 int EINVAL ;
 struct pn_softc* device_get_softc (int ) ;

__attribute__((used)) static int
pn_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct pn_softc *sc;
 int i;

 if (sets == ((void*)0)|| count == ((void*)0))
  return (EINVAL);
 sc = device_get_softc(dev);
 if (*count < sc->powernow_max_states)
  return (E2BIG);
 for (i = 0; i < sc->powernow_max_states; ++i) {
  sets[i].freq = sc->powernow_states[i].freq / 1000;
  sets[i].power = sc->powernow_states[i].power;
  sets[i].lat = 200;
  sets[i].volts = sc->vid_to_volts[sc->powernow_states[i].vid];
  sets[i].dev = dev;
 }
 *count = sc->powernow_max_states;

 return (0);
}
