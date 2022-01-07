
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_7__ ;
typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {int func_code; void* status; int target_lun; int target_id; } ;
struct TYPE_14__ {int target_id; void* status; } ;
struct ccb_trans_settings_scsi {int flags; int valid; } ;
struct TYPE_13__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings_spi {int flags; int valid; } ;
struct TYPE_12__ {struct ccb_trans_settings_spi spi; } ;
struct ccb_trans_settings {int transport_version; TYPE_7__ ccb_h; void* transport; void* protocol_version; void* protocol; TYPE_6__ proto_specific; TYPE_5__ xport_specific; } ;
struct ccb_pathinq {int version_num; int base_transfer_speed; int transport_version; int maxio; void* protocol_version; void* protocol; void* transport; void* bus_id; int unit_number; int dev_name; int hba_vid; int sim_vid; int initiator_id; int max_lun; int max_target; int hba_misc; int target_sprt; int hba_inquiry; } ;
struct ccb_calc_geometry {int heads; int secs_per_track; int cylinders; int volume_size; } ;
union ccb {TYPE_4__ ccb_h; struct ccb_trans_settings cts; struct ccb_pathinq cpi; struct ccb_calc_geometry ccg; int csio; } ;
typedef int u_int32_t ;
struct ciss_softc {TYPE_3__* ciss_cfg; struct ciss_ldrive** ciss_logical; } ;
struct TYPE_9__ {int fault_tolerance; int heads; int sectors; int cylinders; } ;
struct ciss_ldrive {TYPE_2__ cl_geometry; } ;
struct TYPE_8__ {int target_id; } ;
struct ccb_scsiio {TYPE_1__ ccb_h; } ;
struct cam_sim {int dummy; } ;
struct TYPE_10__ {int max_sg_length; int max_logical_supported; } ;


 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 int CISS_IS_PHYSICAL (int) ;
 int CISS_MAX_SG_ELEMENTS ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_DISC ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int PAGE_SIZE ;
 int PI_TAG_ABLE ;
 void* PROTO_SCSI ;
 void* SCSI_REV_2 ;
 int SIM_IDLEN ;
 void* XPORT_SPI ;




 void* cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 struct ciss_softc* cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int ciss_cam_action_io (struct cam_sim*,struct ccb_scsiio*) ;
 int debug (int,char*,int,...) ;
 int fls (int) ;
 int min (int ,int) ;
 int ntohs (int ) ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
ciss_cam_action(struct cam_sim *sim, union ccb *ccb)
{
    struct ciss_softc *sc;
    struct ccb_scsiio *csio;
    int bus, target;
    int physical;

    sc = cam_sim_softc(sim);
    bus = cam_sim_bus(sim);
    csio = (struct ccb_scsiio *)&ccb->csio;
    target = csio->ccb_h.target_id;
    physical = CISS_IS_PHYSICAL(bus);

    switch (ccb->ccb_h.func_code) {


    case 128:
 if (!ciss_cam_action_io(sim, csio))
     return;
 break;


    case 131:
    {
 struct ccb_calc_geometry *ccg = &ccb->ccg;
 struct ciss_ldrive *ld;

 debug(1, "XPT_CALC_GEOMETRY %d:%d:%d", cam_sim_bus(sim), ccb->ccb_h.target_id, ccb->ccb_h.target_lun);

 ld = ((void*)0);
 if (!physical)
     ld = &sc->ciss_logical[bus][target];





 if (physical || ld->cl_geometry.fault_tolerance == 0xFF) {
     u_int32_t secs_per_cylinder;

     ccg->heads = 255;
     ccg->secs_per_track = 32;
     secs_per_cylinder = ccg->heads * ccg->secs_per_track;
     ccg->cylinders = ccg->volume_size / secs_per_cylinder;
 } else {
     ccg->heads = ld->cl_geometry.heads;
     ccg->secs_per_track = ld->cl_geometry.sectors;
     ccg->cylinders = ntohs(ld->cl_geometry.cylinders);
 }
 ccb->ccb_h.status = CAM_REQ_CMP;
        break;
    }


    case 129:
    {
 struct ccb_pathinq *cpi = &ccb->cpi;
 int sg_length;

 debug(1, "XPT_PATH_INQ %d:%d:%d", cam_sim_bus(sim), ccb->ccb_h.target_id, ccb->ccb_h.target_lun);

 cpi->version_num = 1;
 cpi->hba_inquiry = PI_TAG_ABLE;
 cpi->target_sprt = 0;
 cpi->hba_misc = 0;
 cpi->max_target = sc->ciss_cfg->max_logical_supported;
 cpi->max_lun = 0;
 cpi->initiator_id = sc->ciss_cfg->max_logical_supported;
 strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
 strlcpy(cpi->hba_vid, "CISS", HBA_IDLEN);
 strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
 cpi->unit_number = cam_sim_unit(sim);
 cpi->bus_id = cam_sim_bus(sim);
 cpi->base_transfer_speed = 132 * 1024;
 cpi->transport = XPORT_SPI;
 cpi->transport_version = 2;
 cpi->protocol = PROTO_SCSI;
 cpi->protocol_version = SCSI_REV_2;
 if (sc->ciss_cfg->max_sg_length == 0) {
  sg_length = 17;
 } else {
  sg_length = sc->ciss_cfg->max_sg_length - 1;
  sg_length = (1 << (fls(sg_length) - 1)) + 1;
 }
 cpi->maxio = (min(CISS_MAX_SG_ELEMENTS, sg_length) - 1) * PAGE_SIZE;
 ccb->ccb_h.status = CAM_REQ_CMP;
 break;
    }

    case 130:
    {
 struct ccb_trans_settings *cts = &ccb->cts;
 int bus, target;
 struct ccb_trans_settings_spi *spi = &cts->xport_specific.spi;
 struct ccb_trans_settings_scsi *scsi = &cts->proto_specific.scsi;

 bus = cam_sim_bus(sim);
 target = cts->ccb_h.target_id;

 debug(1, "XPT_GET_TRAN_SETTINGS %d:%d", bus, target);

 cts->protocol = PROTO_SCSI;
 cts->protocol_version = SCSI_REV_2;
 cts->transport = XPORT_SPI;
 cts->transport_version = 2;

 spi->valid = CTS_SPI_VALID_DISC;
 spi->flags = CTS_SPI_FLAGS_DISC_ENB;

 scsi->valid = CTS_SCSI_VALID_TQ;
 scsi->flags = CTS_SCSI_FLAGS_TAG_ENB;

 cts->ccb_h.status = CAM_REQ_CMP;
 break;
    }

    default:
 debug(1, "unspported func_code = 0x%x", ccb->ccb_h.func_code);
 ccb->ccb_h.status = CAM_REQ_INVALID;
 break;
    }

    xpt_done(ccb);
}
