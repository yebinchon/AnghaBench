
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct video_adapter {int dummy; } ;
struct keyboard {int dummy; } ;
struct TYPE_5__ {struct keyboard* kbd; struct video_adapter* adp; } ;
typedef TYPE_1__ sc_softc_t ;


 int devclass_get_device (int ,int) ;
 int devclass_get_maxunit (int ) ;
 TYPE_1__* device_get_softc (int ) ;
 TYPE_1__ main_softc ;
 int sc_devclass ;

sc_softc_t
*sc_find_softc(struct video_adapter *adp, struct keyboard *kbd)
{
 sc_softc_t *sc;
 int i;
 int units;

 sc = &main_softc;
 if ((adp == ((void*)0) || adp == sc->adp) &&
     (kbd == ((void*)0) || kbd == sc->kbd))
  return (sc);
 units = devclass_get_maxunit(sc_devclass);
 for (i = 0; i < units; ++i) {
         sc = device_get_softc(devclass_get_device(sc_devclass, i));
  if (sc == ((void*)0))
   continue;
  if ((adp == ((void*)0) || adp == sc->adp) &&
      (kbd == ((void*)0) || kbd == sc->kbd))
   return (sc);
 }
 return (((void*)0));
}
