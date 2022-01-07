
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ow_softc {int * owner; int mtx; } ;
typedef int * device_t ;


 int EWOULDBLOCK ;
 int OWN_DONTWAIT ;
 int OW_ASSERT_UNLOCKED (struct ow_softc*) ;
 int OW_LOCK (struct ow_softc*) ;
 int OW_UNLOCK (struct ow_softc*) ;
 int device_get_nameunit (int *) ;
 struct ow_softc* device_get_softc (int *) ;
 int mtx_sleep (struct ow_softc*,int *,int ,char*,int ) ;
 int panic (char*,int ,int ) ;

__attribute__((used)) static int
ow_acquire_bus(device_t ndev, device_t pdev, int how)
{
 struct ow_softc *sc;

 sc = device_get_softc(ndev);
 OW_ASSERT_UNLOCKED(sc);
 OW_LOCK(sc);
 if (sc->owner != ((void*)0)) {
  if (sc->owner == pdev)
   panic("%s: %s recursively acquiring the bus.\n",
       device_get_nameunit(ndev),
       device_get_nameunit(pdev));
  if (how == OWN_DONTWAIT) {
   OW_UNLOCK(sc);
   return EWOULDBLOCK;
  }
  while (sc->owner != ((void*)0))
   mtx_sleep(sc, &sc->mtx, 0, "owbuswait", 0);
 }
 sc->owner = pdev;
 OW_UNLOCK(sc);

 return 0;
}
