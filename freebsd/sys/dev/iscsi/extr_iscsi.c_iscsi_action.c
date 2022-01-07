
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_10__ {int func_code; void* status; } ;
struct TYPE_9__ {void* status; } ;
struct ccb_trans_settings_scsi {int flags; int valid; } ;
struct TYPE_8__ {struct ccb_trans_settings_scsi scsi; } ;
struct ccb_trans_settings {TYPE_4__ ccb_h; int transport_version; void* transport; void* protocol_version; void* protocol; TYPE_3__ proto_specific; } ;
struct TYPE_7__ {void* status; } ;
struct ccb_pathinq {int version_num; int max_lun; int base_transfer_speed; TYPE_2__ ccb_h; int maxio; void* protocol_version; void* protocol; int transport_version; void* transport; int bus_id; int unit_number; int dev_name; int hba_vid; int sim_vid; int initiator_id; int max_target; int hba_eng_cnt; int hba_misc; int target_sprt; int hba_inquiry; } ;
union ccb {TYPE_5__ ccb_h; int ccg; struct ccb_trans_settings cts; struct ccb_pathinq cpi; } ;
struct iscsi_session {int is_connected; TYPE_1__* is_conn; scalar_t__ is_terminating; } ;
struct cam_sim {int dummy; } ;
struct TYPE_6__ {int ic_unmapped; } ;


 void* CAM_DEV_NOT_THERE ;
 void* CAM_FUNC_NOTAVAIL ;
 void* CAM_REQ_CMP ;
 int CTS_SCSI_FLAGS_TAG_ENB ;
 int CTS_SCSI_VALID_TQ ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int ISCSI_SESSION_DEBUG (struct iscsi_session*,char*,...) ;
 int ISCSI_SESSION_LOCK_ASSERT (struct iscsi_session*) ;
 int ISCSI_WARN (char*) ;
 int MAXPHYS ;
 int PIM_EXTLUNS ;
 int PIM_UNMAPPED ;
 int PI_TAG_ABLE ;
 void* PROTO_SCSI ;
 void* SCSI_REV_SPC3 ;
 int SIM_IDLEN ;
 void* XPORT_ISCSI ;







 int cam_calc_geometry (int *,int) ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 struct iscsi_session* cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 scalar_t__ fail_on_disconnection ;
 int iscsi_action_abort (struct iscsi_session*,union ccb*) ;
 int iscsi_action_scsiio (struct iscsi_session*,union ccb*) ;
 int strlcpy (int ,char*,int ) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
iscsi_action(struct cam_sim *sim, union ccb *ccb)
{
 struct iscsi_session *is;

 is = cam_sim_softc(sim);

 ISCSI_SESSION_LOCK_ASSERT(is);

 if (is->is_terminating ||
     (is->is_connected == 0 && fail_on_disconnection)) {
  ccb->ccb_h.status = CAM_DEV_NOT_THERE;
  xpt_done(ccb);
  return;
 }

 switch (ccb->ccb_h.func_code) {
 case 131:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;

  cpi->version_num = 1;
  cpi->hba_inquiry = PI_TAG_ABLE;
  cpi->target_sprt = 0;
  cpi->hba_misc = PIM_EXTLUNS;




  if (is->is_conn == ((void*)0))
   ISCSI_WARN("NULL conn");
  else if (is->is_conn->ic_unmapped)
   cpi->hba_misc |= PIM_UNMAPPED;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = 0;





  cpi->max_lun = 255;
  cpi->initiator_id = ~0;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "iSCSI", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  cpi->bus_id = cam_sim_bus(sim);
  cpi->base_transfer_speed = 150000;
  cpi->transport = XPORT_ISCSI;
  cpi->transport_version = 0;
  cpi->protocol = PROTO_SCSI;
  cpi->protocol_version = SCSI_REV_SPC3;
  cpi->maxio = MAXPHYS;
  cpi->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 132:
 {
  struct ccb_trans_settings *cts;
  struct ccb_trans_settings_scsi *scsi;

  cts = &ccb->cts;
  scsi = &cts->proto_specific.scsi;

  cts->protocol = PROTO_SCSI;
  cts->protocol_version = SCSI_REV_SPC3;
  cts->transport = XPORT_ISCSI;
  cts->transport_version = 0;
  scsi->valid = CTS_SCSI_VALID_TQ;
  scsi->flags = CTS_SCSI_FLAGS_TAG_ENB;
  cts->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 133:
  cam_calc_geometry(&ccb->ccg, 1);
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 134:
  iscsi_action_abort(is, ccb);
  return;
 case 129:
  iscsi_action_scsiio(is, ccb);
  return;
 default:



  ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
  break;
 }
 xpt_done(ccb);
}
