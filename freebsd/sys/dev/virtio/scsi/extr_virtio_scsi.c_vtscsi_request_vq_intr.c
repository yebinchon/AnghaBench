
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {struct virtqueue* vtscsi_request_vq; } ;
struct virtqueue {int dummy; } ;


 int VTSCSI_LOCK (struct vtscsi_softc*) ;
 int VTSCSI_UNLOCK (struct vtscsi_softc*) ;
 int virtqueue_disable_intr (struct virtqueue*) ;
 scalar_t__ virtqueue_enable_intr (struct virtqueue*) ;
 int vtscsi_complete_vq (struct vtscsi_softc*,struct virtqueue*) ;

__attribute__((used)) static void
vtscsi_request_vq_intr(void *xsc)
{
 struct vtscsi_softc *sc;
 struct virtqueue *vq;

 sc = xsc;
 vq = sc->vtscsi_request_vq;

again:
 VTSCSI_LOCK(sc);

 vtscsi_complete_vq(sc, sc->vtscsi_request_vq);

 if (virtqueue_enable_intr(vq) != 0) {
  virtqueue_disable_intr(vq);
  VTSCSI_UNLOCK(sc);
  goto again;
 }

 VTSCSI_UNLOCK(sc);
}
