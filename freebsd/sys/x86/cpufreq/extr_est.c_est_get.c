
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct est_softc {int flist_len; int freq_list; } ;
struct cf_setting {int dev; int lat; int power; int volts; int freq; } ;
struct TYPE_3__ {int power; int volts; int freq; } ;
typedef TYPE_1__ freq_info ;
typedef int device_t ;


 int ENXIO ;
 int EST_TRANS_LAT ;
 struct est_softc* device_get_softc (int ) ;
 TYPE_1__* est_get_current (int ,int ) ;

__attribute__((used)) static int
est_get(device_t dev, struct cf_setting *set)
{
 struct est_softc *sc;
 freq_info *f;

 sc = device_get_softc(dev);
 f = est_get_current(sc->freq_list, sc->flist_len);
 if (f == ((void*)0))
  return (ENXIO);

 set->freq = f->freq;
 set->volts = f->volts;
 set->power = f->power;
 set->lat = EST_TRANS_LAT;
 set->dev = dev;
 return (0);
}
