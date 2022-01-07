
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct est_softc {int flist_len; TYPE_1__* freq_list; } ;
struct cf_setting {int dev; int lat; int power; int volts; int freq; } ;
struct TYPE_2__ {int power; int volts; int freq; } ;
typedef TYPE_1__ freq_info ;
typedef int device_t ;


 int E2BIG ;
 int EST_MAX_SETTINGS ;
 int EST_TRANS_LAT ;
 struct est_softc* device_get_softc (int ) ;

__attribute__((used)) static int
est_settings(device_t dev, struct cf_setting *sets, int *count)
{
 struct est_softc *sc;
 freq_info *f;
 int i;

 sc = device_get_softc(dev);
 if (*count < EST_MAX_SETTINGS)
  return (E2BIG);

 i = 0;
 for (f = sc->freq_list; f < sc->freq_list + sc->flist_len; f++, i++) {
  sets[i].freq = f->freq;
  sets[i].volts = f->volts;
  sets[i].power = f->power;
  sets[i].lat = EST_TRANS_LAT;
  sets[i].dev = dev;
 }
 *count = i;

 return (0);
}
