
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pmufreq_softc {scalar_t__ maxfreq; scalar_t__ curfreq; } ;
struct cf_setting {scalar_t__ freq; } ;
typedef int device_t ;


 int EINVAL ;
 struct pmufreq_softc* device_get_softc (int ) ;
 int pmu_set_speed (int) ;

__attribute__((used)) static int
pmufreq_set(device_t dev, const struct cf_setting *set)
{
 struct pmufreq_softc *sc;
 int error, speed_sel;

 if (set == ((void*)0))
  return (EINVAL);

 sc = device_get_softc(dev);

 if (set->freq == sc->maxfreq)
  speed_sel = 0;
 else
  speed_sel = 1;

 error = pmu_set_speed(speed_sel);
 if (error == 0)
  sc->curfreq = set->freq;

 return (error);
}
