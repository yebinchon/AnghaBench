
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int func_code; void* status; int target_lun; int target_id; } ;
struct TYPE_11__ {int target_id; void* status; } ;
struct ccb_trans_settings_spi {int valid; int sync_period; int flags; int bus_width; } ;
struct TYPE_10__ {struct ccb_trans_settings_spi spi; } ;
struct ccb_trans_settings_scsi {int valid; int flags; } ;
struct TYPE_9__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings {int transport_version; TYPE_5__ ccb_h; void* transport; void* protocol_version; void* protocol; TYPE_4__ xport_specific; TYPE_3__ proto_specific; } ;
struct ccb_pathinq {int version_num; int base_transfer_speed; int transport_version; void* protocol_version; void* protocol; void* transport; void* bus_id; int unit_number; int dev_name; int hba_vid; int sim_vid; int initiator_id; int max_lun; int max_target; int hba_misc; int target_sprt; int hba_inquiry; } ;
struct ccb_calc_geometry {int heads; int secs_per_track; int cylinders; int volume_size; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_trans_settings cts; struct ccb_pathinq cpi; struct ccb_calc_geometry ccg; int csio; } ;
typedef int u_int32_t ;
struct mly_softc {TYPE_6__** mly_btl; TYPE_1__* mly_controllerparam; } ;
struct ccb_scsiio {int dummy; } ;
struct cam_sim {int dummy; } ;
struct TYPE_12__ {int mb_flags; int mb_speed; int mb_width; } ;
struct TYPE_7__ {int initiator_id; int bios_geometry; } ;


 void* CAM_REQ_CMP ;
 void* CAM_REQ_CMP_ERR ;
 void* CAM_REQ_INVALID ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int CTS_SPI_FLAGS_DISC_ENB ;
 int CTS_SPI_VALID_BUS_WIDTH ;
 int CTS_SPI_VALID_DISC ;
 int CTS_SPI_VALID_SYNC_RATE ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int MLY_ASSERT_LOCKED (struct mly_softc*) ;
 int MLY_BIOSGEOM_8G ;
 int MLY_BTL_LOGICAL ;
 int MLY_BTL_PHYSICAL ;
 int MLY_MAX_LUNS ;
 int MLY_MAX_TARGETS ;
 int MSG_EXT_WDTR_BUS_16_BIT ;
 int MSG_EXT_WDTR_BUS_32_BIT ;
 int MSG_EXT_WDTR_BUS_8_BIT ;
 int PI_TAG_ABLE ;
 void* PROTO_SCSI ;
 void* SCSI_REV_2 ;
 int SIM_IDLEN ;
 void* XPORT_SPI ;




 void* cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 struct mly_softc* cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int debug (int,char*,int,...) ;
 int debug_called (int) ;
 int mly_cam_action_io (struct cam_sim*,struct ccb_scsiio*) ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
mly_cam_action(struct cam_sim *sim, union ccb *ccb)
{
    struct mly_softc *sc = cam_sim_softc(sim);

    debug_called(2);
    MLY_ASSERT_LOCKED(sc);

    switch (ccb->ccb_h.func_code) {


    case 128:
 if (!mly_cam_action_io(sim, (struct ccb_scsiio *)&ccb->csio))
     return;
 break;


    case 131:
    {
 struct ccb_calc_geometry *ccg = &ccb->ccg;
        u_int32_t secs_per_cylinder;

 debug(2, "XPT_CALC_GEOMETRY %d:%d:%d", cam_sim_bus(sim), ccb->ccb_h.target_id, ccb->ccb_h.target_lun);

 if (sc->mly_controllerparam->bios_geometry == MLY_BIOSGEOM_8G) {
     ccg->heads = 255;
            ccg->secs_per_track = 63;
 } else {
     ccg->heads = 128;
            ccg->secs_per_track = 32;
 }
 secs_per_cylinder = ccg->heads * ccg->secs_per_track;
        ccg->cylinders = ccg->volume_size / secs_per_cylinder;
        ccb->ccb_h.status = CAM_REQ_CMP;
        break;
    }


    case 129:
    {
 struct ccb_pathinq *cpi = &ccb->cpi;

 debug(2, "XPT_PATH_INQ %d:%d:%d", cam_sim_bus(sim), ccb->ccb_h.target_id, ccb->ccb_h.target_lun);

 cpi->version_num = 1;
 cpi->hba_inquiry = PI_TAG_ABLE;
 cpi->target_sprt = 0;
 cpi->hba_misc = 0;
 cpi->max_target = MLY_MAX_TARGETS - 1;
 cpi->max_lun = MLY_MAX_LUNS - 1;
 cpi->initiator_id = sc->mly_controllerparam->initiator_id;
 strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
 strlcpy(cpi->hba_vid, "Mylex", HBA_IDLEN);
 strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
 cpi->unit_number = cam_sim_unit(sim);
 cpi->bus_id = cam_sim_bus(sim);
 cpi->base_transfer_speed = 132 * 1024;
 cpi->transport = XPORT_SPI;
 cpi->transport_version = 2;
 cpi->protocol = PROTO_SCSI;
 cpi->protocol_version = SCSI_REV_2;
 ccb->ccb_h.status = CAM_REQ_CMP;
 break;
    }

    case 130:
    {
 struct ccb_trans_settings *cts = &ccb->cts;
 int bus, target;
 struct ccb_trans_settings_scsi *scsi = &cts->proto_specific.scsi;
 struct ccb_trans_settings_spi *spi = &cts->xport_specific.spi;

 cts->protocol = PROTO_SCSI;
 cts->protocol_version = SCSI_REV_2;
 cts->transport = XPORT_SPI;
 cts->transport_version = 2;

 scsi->flags = 0;
 scsi->valid = 0;
 spi->flags = 0;
 spi->valid = 0;

 bus = cam_sim_bus(sim);
 target = cts->ccb_h.target_id;
 debug(2, "XPT_GET_TRAN_SETTINGS %d:%d", bus, target);

 if (sc->mly_btl[bus][target].mb_flags & MLY_BTL_LOGICAL) {


 } else if (sc->mly_btl[bus][target].mb_flags & MLY_BTL_PHYSICAL) {

     scsi->flags |= CTS_SCSI_FLAGS_TAG_ENB;
     scsi->valid |= CTS_SCSI_VALID_TQ;


     if (sc->mly_btl[bus][target].mb_speed == 0) {
  spi->sync_period = 1000000 / 5;
     } else {
  spi->sync_period = 1000000 / sc->mly_btl[bus][target].mb_speed;
     }


     switch (sc->mly_btl[bus][target].mb_width) {
     case 32:
  spi->bus_width = MSG_EXT_WDTR_BUS_32_BIT;
  break;
     case 16:
  spi->bus_width = MSG_EXT_WDTR_BUS_16_BIT;
  break;
     case 8:
     default:
  spi->bus_width = MSG_EXT_WDTR_BUS_8_BIT;
  break;
     }
     spi->valid |= CTS_SPI_VALID_SYNC_RATE | CTS_SPI_VALID_BUS_WIDTH;


 } else {
     cts->ccb_h.status = CAM_REQ_CMP_ERR;
     break;
 }


 spi->flags |= CTS_SPI_FLAGS_DISC_ENB;
 spi->valid |= CTS_SPI_VALID_DISC;

 cts->ccb_h.status = CAM_REQ_CMP;
 break;
    }

    default:
 debug(2, "unspported func_code = 0x%x", ccb->ccb_h.func_code);
 ccb->ccb_h.status = CAM_REQ_INVALID;
 break;
    }

    xpt_done(ccb);
}
