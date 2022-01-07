
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int func_code; void* status; int target_id; } ;
struct TYPE_8__ {void* status; } ;
struct ccb_pathinq {int version_num; int base_transfer_speed; int transport_version; TYPE_2__ ccb_h; int protocol_version; int protocol; int transport; int dev_name; int hba_vid; int sim_vid; void* initiator_id; int bus_id; int unit_number; int max_lun; void* max_target; int hba_eng_cnt; int hba_misc; int target_sprt; int hba_inquiry; } ;
struct TYPE_7__ {int heads; int secs_per_track; int cylinders; int volume_size; } ;
union ccb {TYPE_3__ ccb_h; struct ccb_pathinq cpi; TYPE_1__ ccg; } ;
struct cam_sim {int dummy; } ;
struct TYPE_10__ {int vbus; } ;
typedef TYPE_4__* PVBUS_EXT ;
typedef int PVBUS ;


 void* CAM_FUNC_NOTAVAIL ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INVALID ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int KdPrint (char*) ;
 int PIM_NOBUSRESET ;
 int PI_SDTR_ABLE ;
 int PROTO_SCSI ;
 int SCSI_REV_2 ;
 int SIM_IDLEN ;
 int XPORT_SPI ;






 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 int cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int hpt_assert_vbus_locked (TYPE_4__*) ;
 int hpt_scsi_io (TYPE_4__*,union ccb*) ;
 int ldm_reset_vbus (int ) ;
 void* osm_max_targets ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void hpt_action(struct cam_sim *sim, union ccb *ccb)
{
 PVBUS_EXT vbus_ext = (PVBUS_EXT)cam_sim_softc(sim);

 KdPrint(("hpt_action(fn=%d, id=%d)", ccb->ccb_h.func_code, ccb->ccb_h.target_id));

 hpt_assert_vbus_locked(vbus_ext);
 switch (ccb->ccb_h.func_code) {

 case 129:
  hpt_scsi_io(vbus_ext, ccb);
  return;

 case 130:
  ldm_reset_vbus((PVBUS)vbus_ext->vbus);
  break;

 case 132:
 case 128:
  ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
  break;

 case 133:
  ccb->ccg.heads = 255;
  ccb->ccg.secs_per_track = 63;
  ccb->ccg.cylinders = ccb->ccg.volume_size / (ccb->ccg.heads * ccb->ccg.secs_per_track);
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;

 case 131:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;

  cpi->version_num = 1;
  cpi->hba_inquiry = PI_SDTR_ABLE;
  cpi->target_sprt = 0;
  cpi->hba_misc = PIM_NOBUSRESET;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = osm_max_targets;
  cpi->max_lun = 0;
  cpi->unit_number = cam_sim_unit(sim);
  cpi->bus_id = cam_sim_bus(sim);
  cpi->initiator_id = osm_max_targets;
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
