
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int func_code; void* status; } ;
struct TYPE_7__ {int valid; } ;
struct ccb_trans_settings_mmc {int host_f_max; int host_f_min; int host_ocr; } ;
struct TYPE_6__ {struct ccb_trans_settings_mmc mmc; } ;
struct ccb_trans_settings {TYPE_3__ xport_specific; int transport_version; void* transport; int protocol_version; void* protocol; TYPE_2__ proto_specific; } ;
struct TYPE_5__ {void* status; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int hba_misc; int initiator_id; int base_transfer_speed; TYPE_1__ ccb_h; int transport_version; void* transport; int protocol_version; void* protocol; int bus_id; int unit_number; int dev_name; int hba_vid; int sim_vid; int max_lun; int max_target; int hba_eng_cnt; int target_sprt; } ;
union ccb {TYPE_4__ ccb_h; struct ccb_trans_settings cts; struct ccb_pathinq cpi; } ;
struct mmcnull_softc {int dev; int sc_mtx; } ;
struct cam_sim {int dummy; } ;


 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 void* CAM_SEL_TIMEOUT ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int MA_OWNED ;
 int PIM_NOBUSRESET ;
 int PIM_SEQSCAN ;
 int PI_SDTR_ABLE ;
 int PI_TAG_ABLE ;
 int PI_WIDE_16 ;
 void* PROTO_MMCSD ;
 int SCSI_REV_0 ;
 int SIM_IDLEN ;
 void* XPORT_MMCSD ;






 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 struct mmcnull_softc* cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int device_printf (int ,char*,...) ;
 int mmcnull_handle_mmcio (struct cam_sim*,union ccb*) ;
 int mtx_assert (int *,int ) ;
 int strncpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
mmcnull_action_sd(struct cam_sim *sim, union ccb *ccb)
{
 struct mmcnull_softc *sc;

 sc = cam_sim_softc(sim);
 if (sc == ((void*)0)) {
  ccb->ccb_h.status = CAM_SEL_TIMEOUT;
  xpt_done(ccb);
  return;
 }

 mtx_assert(&sc->sc_mtx, MA_OWNED);

 device_printf(sc->dev, "action: func_code %0x\n", ccb->ccb_h.func_code);

 switch (ccb->ccb_h.func_code) {
 case 131:
 {
  struct ccb_pathinq *cpi;

  cpi = &ccb->cpi;
  cpi->version_num = 1;
  cpi->hba_inquiry = PI_SDTR_ABLE | PI_TAG_ABLE | PI_WIDE_16;
  cpi->target_sprt = 0;
  cpi->hba_misc = PIM_NOBUSRESET | PIM_SEQSCAN;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = 0;
  cpi->max_lun = 0;
  cpi->initiator_id = 1;
  strncpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strncpy(cpi->hba_vid, "FreeBSD Foundation", HBA_IDLEN);
  strncpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  cpi->bus_id = cam_sim_bus(sim);
  cpi->base_transfer_speed = 100;
  cpi->protocol = PROTO_MMCSD;
  cpi->protocol_version = SCSI_REV_0;
  cpi->transport = XPORT_MMCSD;
  cpi->transport_version = 0;

  cpi->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 133:
 {
  struct ccb_trans_settings *cts = &ccb->cts;
  struct ccb_trans_settings_mmc *mcts;
  mcts = &ccb->cts.proto_specific.mmc;

                device_printf(sc->dev, "Got XPT_GET_TRAN_SETTINGS\n");

                cts->protocol = PROTO_MMCSD;
                cts->protocol_version = 0;
                cts->transport = XPORT_MMCSD;
                cts->transport_version = 0;
                cts->xport_specific.valid = 0;
  mcts->host_f_max = 12000000;
  mcts->host_f_min = 200000;
  mcts->host_ocr = 1;
                ccb->ccb_h.status = CAM_REQ_CMP;
                break;
        }
 case 128:
  device_printf(sc->dev, "Got XPT_SET_TRAN_SETTINGS, should update IOS...\n");
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 130:
  device_printf(sc->dev, "Got XPT_RESET_BUS, ACK it...\n");
  ccb->ccb_h.status = CAM_REQ_CMP;
                break;
 case 132:






  device_printf(sc->dev, "Got XPT_MMC_IO\n");
  mmcnull_handle_mmcio(sim, ccb);
  return;
  break;
        case 129:

                device_printf(sc->dev, "Got XPT_RESET_DEV\n");
  ccb->ccb_h.status = CAM_REQ_CMP;
                break;
 default:
  device_printf(sc->dev, "Func code %d is unknown\n", ccb->ccb_h.func_code);
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 }
 xpt_done(ccb);
 return;
}
