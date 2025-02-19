
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtblk_softc {int vtblk_flags; struct virtqueue* vtblk_vq; } ;
struct vtblk_request {int dummy; } ;
struct virtqueue {int dummy; } ;


 int VTBLK_FLAG_SUSPEND ;
 int VTBLK_LOCK_ASSERT (struct vtblk_softc*) ;
 int virtqueue_full (struct virtqueue*) ;
 int virtqueue_notify (struct virtqueue*) ;
 scalar_t__ vtblk_request_execute (struct vtblk_softc*,struct vtblk_request*) ;
 struct vtblk_request* vtblk_request_next (struct vtblk_softc*) ;
 int vtblk_request_requeue_ready (struct vtblk_softc*,struct vtblk_request*) ;

__attribute__((used)) static void
vtblk_startio(struct vtblk_softc *sc)
{
 struct virtqueue *vq;
 struct vtblk_request *req;
 int enq;

 VTBLK_LOCK_ASSERT(sc);
 vq = sc->vtblk_vq;
 enq = 0;

 if (sc->vtblk_flags & VTBLK_FLAG_SUSPEND)
  return;

 while (!virtqueue_full(vq)) {
  req = vtblk_request_next(sc);
  if (req == ((void*)0))
   break;

  if (vtblk_request_execute(sc, req) != 0) {
   vtblk_request_requeue_ready(sc, req);
   break;
  }

  enq++;
 }

 if (enq > 0)
  virtqueue_notify(vq);
}
