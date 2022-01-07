
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {int func_code; int flags; void* status; } ;
struct TYPE_3__ {void* status; } ;
struct ccb_pathinq {int version_num; int max_target; int base_transfer_speed; TYPE_1__ ccb_h; int transport_version; int transport; int unit_number; int dev_name; int hba_vid; int sim_vid; int bus_id; int initiator_id; int max_lun; int hba_eng_cnt; int hba_misc; int target_sprt; int hba_inquiry; } ;
struct ccb_calc_geometry {int volume_size; int cylinders; int heads; int secs_per_track; int block_size; } ;
struct ccb_scsiio {int dummy; } ;
union ccb {TYPE_2__ ccb_h; struct ccb_pathinq cpi; struct ccb_calc_geometry ccg; struct ccb_scsiio csio; } ;
struct vpo_data {int vpo_dev; int vpo_io; int vpo_isplus; } ;
struct cam_sim {char* sim_name; int unit_number; int bus_id; scalar_t__ softc; } ;
typedef int intmax_t ;


 int CAM_CDB_PHYS ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_CMP_ERR ;
 void* CAM_REQ_INVALID ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int SIM_IDLEN ;
 int VP0_INITIATOR ;
 int XPORT_PPB ;




 int device_get_parent (int ) ;
 int device_printf (int ,char*,...) ;
 int imm_reset_bus (int *) ;
 int ppb_assert_locked (int ) ;
 int * scsiio_cdb_ptr (struct ccb_scsiio*) ;
 int strlcpy (int ,char*,int ) ;
 int vpo_intr (struct vpo_data*,struct ccb_scsiio*) ;
 int vpoio_reset_bus (int *) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vpo_action(struct cam_sim *sim, union ccb *ccb)
{
 struct vpo_data *vpo = (struct vpo_data *)sim->softc;

 ppb_assert_locked(device_get_parent(vpo->vpo_dev));
 switch (ccb->ccb_h.func_code) {
 case 128:
 {
  struct ccb_scsiio *csio;

  csio = &ccb->csio;

  if (ccb->ccb_h.flags & CAM_CDB_PHYS) {
   ccb->ccb_h.status = CAM_REQ_INVALID;
   xpt_done(ccb);
   break;
  }




  vpo_intr(vpo, csio);

  xpt_done(ccb);

  break;
 }
 case 131:
 {
  struct ccb_calc_geometry *ccg;

  ccg = &ccb->ccg;
  ccg->heads = 64;
  ccg->secs_per_track = 32;
  ccg->cylinders = ccg->volume_size /
     (ccg->heads * ccg->secs_per_track);

  ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  break;
 }
 case 129:
 {





  if (vpo->vpo_isplus) {
   if (imm_reset_bus(&vpo->vpo_io)) {
    ccb->ccb_h.status = CAM_REQ_CMP_ERR;
    xpt_done(ccb);
    return;
   }
  } else {
   if (vpoio_reset_bus(&vpo->vpo_io)) {
    ccb->ccb_h.status = CAM_REQ_CMP_ERR;
    xpt_done(ccb);
    return;
   }
  }

  ccb->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  break;
 }
 case 130:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;




  cpi->version_num = 1;
  cpi->hba_inquiry = 0;
  cpi->target_sprt = 0;
  cpi->hba_misc = 0;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = 7;
  cpi->max_lun = 0;
  cpi->initiator_id = VP0_INITIATOR;
  cpi->bus_id = sim->bus_id;
  cpi->base_transfer_speed = 93;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "Iomega", HBA_IDLEN);
  strlcpy(cpi->dev_name, sim->sim_name, DEV_IDLEN);
  cpi->unit_number = sim->unit_number;
  cpi->transport = XPORT_PPB;
  cpi->transport_version = 0;

  cpi->ccb_h.status = CAM_REQ_CMP;
  xpt_done(ccb);
  break;
 }
 default:
  ccb->ccb_h.status = CAM_REQ_INVALID;
  xpt_done(ccb);
  break;
 }

 return;
}
