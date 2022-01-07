
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtcon_softc {struct virtqueue* vtcon_ctrl_rxvq; } ;
struct virtqueue {int dummy; } ;
struct virtio_console_control {int dummy; } ;


 int M_DEVBUF ;
 int VTCON_LOCK (struct vtcon_softc*) ;
 int VTCON_UNLOCK (struct vtcon_softc*) ;
 int free (struct virtio_console_control*,int ) ;
 struct virtio_console_control* virtqueue_drain (struct virtqueue*,int*) ;

__attribute__((used)) static void
vtcon_ctrl_event_drain(struct vtcon_softc *sc)
{
 struct virtio_console_control *control;
 struct virtqueue *vq;
 int last;

 vq = sc->vtcon_ctrl_rxvq;
 last = 0;

 if (vq == ((void*)0))
  return;

 VTCON_LOCK(sc);
 while ((control = virtqueue_drain(vq, &last)) != ((void*)0))
  free(control, M_DEVBUF);
 VTCON_UNLOCK(sc);
}
