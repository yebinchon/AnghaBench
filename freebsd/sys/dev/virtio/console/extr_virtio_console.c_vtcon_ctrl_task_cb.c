
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct vtcon_softc {int vtcon_flags; int vtcon_ctrl_task; struct virtqueue* vtcon_ctrl_rxvq; } ;
struct virtqueue {int dummy; } ;
struct virtio_console_control {int dummy; } ;


 int VTCON_FLAG_DETACHED ;
 int VTCON_LOCK (struct vtcon_softc*) ;
 int VTCON_UNLOCK (struct vtcon_softc*) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_thread ;
 struct virtio_console_control* virtqueue_dequeue (struct virtqueue*,int*) ;
 scalar_t__ virtqueue_enable_intr (struct virtqueue*) ;
 int virtqueue_notify (struct virtqueue*) ;
 int vtcon_ctrl_event_requeue (struct vtcon_softc*,struct virtio_console_control*) ;
 int vtcon_ctrl_process_event (struct vtcon_softc*,struct virtio_console_control*,void*,size_t) ;

__attribute__((used)) static void
vtcon_ctrl_task_cb(void *xsc, int pending)
{
 struct vtcon_softc *sc;
 struct virtqueue *vq;
 struct virtio_console_control *control;
 void *data;
 size_t data_len;
 int detached;
 uint32_t len;

 sc = xsc;
 vq = sc->vtcon_ctrl_rxvq;

 VTCON_LOCK(sc);

 while ((detached = (sc->vtcon_flags & VTCON_FLAG_DETACHED)) == 0) {
  control = virtqueue_dequeue(vq, &len);
  if (control == ((void*)0))
   break;

  if (len > sizeof(struct virtio_console_control)) {
   data = (void *) &control[1];
   data_len = len - sizeof(struct virtio_console_control);
  } else {
   data = ((void*)0);
   data_len = 0;
  }

  VTCON_UNLOCK(sc);
  vtcon_ctrl_process_event(sc, control, data, data_len);
  VTCON_LOCK(sc);
  vtcon_ctrl_event_requeue(sc, control);
 }

 if (!detached) {
  virtqueue_notify(vq);
  if (virtqueue_enable_intr(vq) != 0)
   taskqueue_enqueue(taskqueue_thread,
       &sc->vtcon_ctrl_task);
 }

 VTCON_UNLOCK(sc);
}
