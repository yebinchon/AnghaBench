
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int func_code; int flags; void* status; int target_id; int target_lun; } ;
struct TYPE_3__ {int status; } ;
struct ccb_pathinq {int version_num; int base_transfer_speed; int transport_version; TYPE_1__ ccb_h; int protocol_version; int protocol; int transport; int dev_name; int hba_vid; int sim_vid; int initiator_id; int bus_id; int unit_number; int max_lun; int max_target; int hba_eng_cnt; int hba_misc; int target_sprt; int hba_inquiry; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_pathinq cpi; int ccg; } ;
struct hpt_iop_srb {int dma_map; union ccb* ccb; } ;
struct hpt_iop_hba {int max_devices; int msg_done; int pcidev; int sim; int pciunit; int io_dmat; } ;
struct cam_sim {int dummy; } ;


 int CAM_CDB_PHYS ;
 void* CAM_FUNC_NOTAVAIL ;
 int CAM_REQ_CMP ;
 void* CAM_REQ_CMP_ERR ;
 void* CAM_REQ_INVALID ;
 void* CAM_TID_INVALID ;
 int DEV_IDLEN ;
 int EINPROGRESS ;
 int HBA_IDLEN ;
 int PIM_NOBUSRESET ;
 int PI_SDTR_ABLE ;
 int PROTO_SCSI ;
 int SCSI_REV_2 ;
 int SIM_IDLEN ;
 int XPORT_SPI ;






 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct hpt_iop_srb*,int ) ;
 int cam_calc_geometry (int *,int) ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int device_printf (int ,char*,...) ;
 int hptiop_free_srb (struct hpt_iop_hba*,struct hpt_iop_srb*) ;
 struct hpt_iop_srb* hptiop_get_srb (struct hpt_iop_hba*) ;
 int hptiop_post_scsi_command ;
 int hptiop_reset_adapter (struct hpt_iop_hba*) ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void hptiop_action(struct cam_sim *sim, union ccb *ccb)
{
 struct hpt_iop_hba * hba = (struct hpt_iop_hba *)cam_sim_softc(sim);
 struct hpt_iop_srb * srb;
 int error;

 switch (ccb->ccb_h.func_code) {

 case 129:
  if (ccb->ccb_h.target_lun != 0 ||
   ccb->ccb_h.target_id >= hba->max_devices ||
   (ccb->ccb_h.flags & CAM_CDB_PHYS))
  {
   ccb->ccb_h.status = CAM_TID_INVALID;
   xpt_done(ccb);
   return;
  }

  if ((srb = hptiop_get_srb(hba)) == ((void*)0)) {
   device_printf(hba->pcidev, "srb allocated failed");
   ccb->ccb_h.status = CAM_REQ_CMP_ERR;
   xpt_done(ccb);
   return;
  }

  srb->ccb = ccb;
  error = bus_dmamap_load_ccb(hba->io_dmat,
         srb->dma_map,
         ccb,
         hptiop_post_scsi_command,
         srb,
         0);

  if (error && error != EINPROGRESS) {
   device_printf(hba->pcidev,
    "%d bus_dmamap_load error %d",
    hba->pciunit, error);
   xpt_freeze_simq(hba->sim, 1);
   ccb->ccb_h.status = CAM_REQ_CMP_ERR;
   hptiop_free_srb(hba, srb);
   xpt_done(ccb);
   return;
  }

  return;

 case 130:
  device_printf(hba->pcidev, "reset adapter");
  hba->msg_done = 0;
  hptiop_reset_adapter(hba);
  break;

 case 132:
 case 128:
  ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
  break;

 case 133:
  cam_calc_geometry(&ccb->ccg, 1);
  break;

 case 131:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;

  cpi->version_num = 1;
  cpi->hba_inquiry = PI_SDTR_ABLE;
  cpi->target_sprt = 0;
  cpi->hba_misc = PIM_NOBUSRESET;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = hba->max_devices;
  cpi->max_lun = 0;
  cpi->unit_number = cam_sim_unit(sim);
  cpi->bus_id = cam_sim_bus(sim);
  cpi->initiator_id = hba->max_devices;
  cpi->base_transfer_speed = 3300;

  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "HPT   ", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->transport = XPORT_SPI;
  cpi->transport_version = 2;
  cpi->protocol = PROTO_SCSI;
  cpi->protocol_version = SCSI_REV_2;
  cpi->ccb_h.status = CAM_REQ_CMP;
  break;
 }

 default:
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 }

 xpt_done(ccb);
 return;
}
