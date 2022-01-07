
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_dev; } ;
struct virtio_scsi_event {int event; } ;


 int KASSERT (int,char*) ;
 int VIRTIO_SCSI_T_EVENTS_MISSED ;

 int device_printf (int ,char*,int) ;
 int vtscsi_enqueue_event_buf (struct vtscsi_softc*,struct virtio_scsi_event*) ;
 int vtscsi_execute_rescan_bus (struct vtscsi_softc*) ;
 int vtscsi_transport_reset_event (struct vtscsi_softc*,struct virtio_scsi_event*) ;

__attribute__((used)) static void
vtscsi_handle_event(struct vtscsi_softc *sc, struct virtio_scsi_event *event)
{
 int error;

 if ((event->event & VIRTIO_SCSI_T_EVENTS_MISSED) == 0) {
  switch (event->event) {
  case 128:
   vtscsi_transport_reset_event(sc, event);
   break;
  default:
   device_printf(sc->vtscsi_dev,
       "unhandled event: %d\n", event->event);
   break;
  }
 } else
  vtscsi_execute_rescan_bus(sc);





 error = vtscsi_enqueue_event_buf(sc, event);
 KASSERT(error == 0,
     ("cannot requeue event buffer: %d", error));
}
