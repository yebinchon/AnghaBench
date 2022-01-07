
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
struct ccb_pathinq {int version_num; int hba_misc; int base_transfer_speed; int maxio; int hba_subdevice; int hba_subvendor; int hba_device; int hba_vendor; scalar_t__ transport_version; int transport; int protocol_version; int protocol; int bus_id; int unit_number; int dev_name; int hba_vid; int sim_vid; int initiator_id; int max_lun; int max_target; scalar_t__ hba_eng_cnt; scalar_t__ target_sprt; int hba_inquiry; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_pathinq cpi; } ;
struct vtscsi_softc {int vtscsi_max_nsegs; int vtscsi_max_lun; int vtscsi_max_target; int vtscsi_dev; } ;
struct cam_sim {int dummy; } ;
typedef int device_t ;


 int CAM_REQ_CMP ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int PAGE_SIZE ;
 int PIM_NOBUSRESET ;
 int PIM_SEQSCAN ;
 int PIM_UNMAPPED ;
 int PI_TAG_ABLE ;
 int PROTO_SCSI ;
 int SCSI_REV_SPC3 ;
 int SIM_IDLEN ;
 int VTSCSI_INITIATOR_ID ;
 int VTSCSI_MIN_SEGMENTS ;
 int VTSCSI_TRACE ;
 int XPORT_SAS ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int strlcpy (int ,char*,int ) ;
 int virtio_get_device (int ) ;
 int virtio_get_subdevice (int ) ;
 int virtio_get_subvendor (int ) ;
 int virtio_get_vendor (int ) ;
 scalar_t__ vtscsi_bus_reset_disable ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,struct cam_sim*,union ccb*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vtscsi_cam_path_inquiry(struct vtscsi_softc *sc, struct cam_sim *sim,
    union ccb *ccb)
{
 device_t dev;
 struct ccb_pathinq *cpi;

 dev = sc->vtscsi_dev;
 cpi = &ccb->cpi;

 vtscsi_dprintf(sc, VTSCSI_TRACE, "sim=%p ccb=%p\n", sim, ccb);

 cpi->version_num = 1;
 cpi->hba_inquiry = PI_TAG_ABLE;
 cpi->target_sprt = 0;
 cpi->hba_misc = PIM_SEQSCAN | PIM_UNMAPPED;
 if (vtscsi_bus_reset_disable != 0)
  cpi->hba_misc |= PIM_NOBUSRESET;
 cpi->hba_eng_cnt = 0;

 cpi->max_target = sc->vtscsi_max_target;
 cpi->max_lun = sc->vtscsi_max_lun;
 cpi->initiator_id = VTSCSI_INITIATOR_ID;

 strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
 strlcpy(cpi->hba_vid, "VirtIO", HBA_IDLEN);
 strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);

 cpi->unit_number = cam_sim_unit(sim);
 cpi->bus_id = cam_sim_bus(sim);

 cpi->base_transfer_speed = 300000;

 cpi->protocol = PROTO_SCSI;
 cpi->protocol_version = SCSI_REV_SPC3;
 cpi->transport = XPORT_SAS;
 cpi->transport_version = 0;

 cpi->maxio = (sc->vtscsi_max_nsegs - VTSCSI_MIN_SEGMENTS - 1) *
     PAGE_SIZE;

 cpi->hba_vendor = virtio_get_vendor(dev);
 cpi->hba_device = virtio_get_device(dev);
 cpi->hba_subvendor = virtio_get_subvendor(dev);
 cpi->hba_subdevice = virtio_get_subdevice(dev);

 ccb->ccb_h.status = CAM_REQ_CMP;
 xpt_done(ccb);
}
