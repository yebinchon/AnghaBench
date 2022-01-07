
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct est_softc {int flist_len; TYPE_1__* freq_list; } ;
struct cf_setting {scalar_t__ freq; } ;
struct TYPE_2__ {scalar_t__ freq; int id16; } ;
typedef TYPE_1__ freq_info ;
typedef int device_t ;


 int EINVAL ;
 struct est_softc* device_get_softc (int ) ;
 int est_set_id16 (int ,int ,int ) ;

__attribute__((used)) static int
est_set(device_t dev, const struct cf_setting *set)
{
 struct est_softc *sc;
 freq_info *f;


 sc = device_get_softc(dev);
 for (f = sc->freq_list; f < sc->freq_list + sc->flist_len; f++) {
  if (f->freq == set->freq)
   break;
 }
 if (f->freq == 0)
  return (EINVAL);


 est_set_id16(dev, f->id16, 0);

 return (0);
}
