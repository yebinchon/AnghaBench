
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int target_id_t ;
struct vtscsi_softc {int vtscsi_dev; } ;
struct virtio_scsi_event {int reason; int lun; } ;
typedef int lun_id_t ;




 int device_printf (int ,char*,int) ;
 int vtscsi_execute_rescan (struct vtscsi_softc*,int ,int ) ;
 int vtscsi_get_request_lun (int ,int *,int *) ;

__attribute__((used)) static void
vtscsi_transport_reset_event(struct vtscsi_softc *sc,
    struct virtio_scsi_event *event)
{
 target_id_t target_id;
 lun_id_t lun_id;

 vtscsi_get_request_lun(event->lun, &target_id, &lun_id);

 switch (event->reason) {
 case 128:
 case 129:
  vtscsi_execute_rescan(sc, target_id, lun_id);
  break;
 default:
  device_printf(sc->vtscsi_dev,
      "unhandled transport event reason: %d\n", event->reason);
  break;
 }
}
