
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_flags; } ;
typedef int device_t ;


 int VTBLK_FLAG_SUSPEND ;
 int VTBLK_LOCK (struct vtblk_softc*) ;
 int VTBLK_UNLOCK (struct vtblk_softc*) ;
 struct vtblk_softc* device_get_softc (int ) ;
 int vtblk_quiesce (struct vtblk_softc*) ;

__attribute__((used)) static int
vtblk_suspend(device_t dev)
{
 struct vtblk_softc *sc;
 int error;

 sc = device_get_softc(dev);

 VTBLK_LOCK(sc);
 sc->vtblk_flags |= VTBLK_FLAG_SUSPEND;

 error = vtblk_quiesce(sc);
 if (error)
  sc->vtblk_flags &= ~VTBLK_FLAG_SUSPEND;
 VTBLK_UNLOCK(sc);

 return (error);
}
