
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtballoon_softc {int dummy; } ;
typedef int device_t ;


 int VTBALLOON_LOCK (struct vtballoon_softc*) ;
 int VTBALLOON_UNLOCK (struct vtballoon_softc*) ;
 struct vtballoon_softc* device_get_softc (int ) ;
 int wakeup_one (struct vtballoon_softc*) ;

__attribute__((used)) static int
vtballoon_config_change(device_t dev)
{
 struct vtballoon_softc *sc;

 sc = device_get_softc(dev);

 VTBALLOON_LOCK(sc);
 wakeup_one(sc);
 VTBALLOON_UNLOCK(sc);

 return (1);
}
