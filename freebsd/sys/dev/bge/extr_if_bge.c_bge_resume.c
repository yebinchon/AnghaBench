
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bge_softc {int bge_ifp; } ;
typedef int if_t ;
typedef int device_t ;


 int BGE_LOCK (struct bge_softc*) ;
 int BGE_UNLOCK (struct bge_softc*) ;
 int IFF_DRV_RUNNING ;
 int IFF_UP ;
 int bge_init_locked (struct bge_softc*) ;
 int bge_start_locked (int ) ;
 struct bge_softc* device_get_softc (int ) ;
 int if_getdrvflags (int ) ;
 int if_getflags (int ) ;

__attribute__((used)) static int
bge_resume(device_t dev)
{
 struct bge_softc *sc;
 if_t ifp;

 sc = device_get_softc(dev);
 BGE_LOCK(sc);
 ifp = sc->bge_ifp;
 if (if_getflags(ifp) & IFF_UP) {
  bge_init_locked(sc);
  if (if_getdrvflags(ifp) & IFF_DRV_RUNNING)
   bge_start_locked(ifp);
 }
 BGE_UNLOCK(sc);

 return (0);
}
