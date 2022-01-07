
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_dev; } ;
struct virtio_scsi_config {int dummy; } ;
typedef int device_t ;


 int VTSCSI_GET_CONFIG (int ,int ,struct virtio_scsi_config*) ;
 int bzero (struct virtio_scsi_config*,int) ;
 int cdb_size ;
 int cmd_per_lun ;
 int event_info_size ;
 int max_channel ;
 int max_lun ;
 int max_sectors ;
 int max_target ;
 int num_queues ;
 int seg_max ;
 int sense_size ;

__attribute__((used)) static void
vtscsi_read_config(struct vtscsi_softc *sc,
    struct virtio_scsi_config *scsicfg)
{
 device_t dev;

 dev = sc->vtscsi_dev;

 bzero(scsicfg, sizeof(struct virtio_scsi_config));

 VTSCSI_GET_CONFIG(dev, num_queues, scsicfg);
 VTSCSI_GET_CONFIG(dev, seg_max, scsicfg);
 VTSCSI_GET_CONFIG(dev, max_sectors, scsicfg);
 VTSCSI_GET_CONFIG(dev, cmd_per_lun, scsicfg);
 VTSCSI_GET_CONFIG(dev, event_info_size, scsicfg);
 VTSCSI_GET_CONFIG(dev, sense_size, scsicfg);
 VTSCSI_GET_CONFIG(dev, cdb_size, scsicfg);
 VTSCSI_GET_CONFIG(dev, max_channel, scsicfg);
 VTSCSI_GET_CONFIG(dev, max_target, scsicfg);
 VTSCSI_GET_CONFIG(dev, max_lun, scsicfg);
}
