
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_vq; } ;


 int EBUSY ;
 scalar_t__ EWOULDBLOCK ;
 int PRIBIO ;
 int VTBLK_LOCK_ASSERT (struct vtblk_softc*) ;
 int VTBLK_MTX (struct vtblk_softc*) ;
 int VTBLK_QUIESCE_TIMEOUT ;
 scalar_t__ mtx_sleep (int *,int ,int ,char*,int ) ;
 int virtqueue_empty (int ) ;

__attribute__((used)) static int
vtblk_quiesce(struct vtblk_softc *sc)
{
 int error;

 VTBLK_LOCK_ASSERT(sc);
 error = 0;

 while (!virtqueue_empty(sc->vtblk_vq)) {
  if (mtx_sleep(&sc->vtblk_vq, VTBLK_MTX(sc), PRIBIO, "vtblkq",
      VTBLK_QUIESCE_TIMEOUT) == EWOULDBLOCK) {
   error = EBUSY;
   break;
  }
 }

 return (error);
}
