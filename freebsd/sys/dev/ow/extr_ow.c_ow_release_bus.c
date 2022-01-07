
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_softc {int * owner; } ;
typedef int * device_t ;


 int OW_ASSERT_UNLOCKED (struct ow_softc*) ;
 int OW_LOCK (struct ow_softc*) ;
 int OW_UNLOCK (struct ow_softc*) ;
 int device_get_nameunit (int *) ;
 struct ow_softc* device_get_softc (int *) ;
 int panic (char*,int ,int ,...) ;
 int wakeup (struct ow_softc*) ;

__attribute__((used)) static void
ow_release_bus(device_t ndev, device_t pdev)
{
 struct ow_softc *sc;

 sc = device_get_softc(ndev);
 OW_ASSERT_UNLOCKED(sc);
 OW_LOCK(sc);
 if (sc->owner == ((void*)0))
  panic("%s: %s releasing unowned bus.", device_get_nameunit(ndev),
      device_get_nameunit(pdev));
 if (sc->owner != pdev)
  panic("%s: %s don't own the bus. %s does. game over.",
      device_get_nameunit(ndev), device_get_nameunit(pdev),
      device_get_nameunit(sc->owner));
 sc->owner = ((void*)0);
 wakeup(sc);
 OW_UNLOCK(sc);
}
