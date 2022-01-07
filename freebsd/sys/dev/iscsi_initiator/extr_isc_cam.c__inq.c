
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ target_lun; int target_id; } ;
struct TYPE_8__ {int status; } ;
struct ccb_pathinq {int version_num; int hba_inquiry; int base_transfer_speed; scalar_t__ transport_version; int transport; TYPE_3__ ccb_h; int unit_number; int dev_name; int hba_vid; int sim_vid; int bus_id; scalar_t__ max_lun; int initiator_id; scalar_t__ max_target; scalar_t__ hba_eng_cnt; scalar_t__ hba_misc; scalar_t__ target_sprt; } ;
union ccb {TYPE_1__ ccb_h; struct ccb_pathinq cpi; } ;
typedef int uintmax_t ;
struct cam_sim {int dummy; } ;
struct TYPE_7__ {scalar_t__ maxluns; } ;
struct TYPE_9__ {TYPE_2__ opt; int sid; } ;
typedef TYPE_4__ isc_session_t ;


 int CAM_REQ_CMP ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int ISCSI_MAX_TARGETS ;
 int PI_SDTR_ABLE ;
 int PI_TAG_ABLE ;
 int PI_WIDE_32 ;
 int SIM_IDLEN ;
 int XPORT_ISCSI ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 TYPE_4__* cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int debug (int,char*,int ,int ,int ) ;
 int debug_called (int) ;
 int strlcpy (int ,char*,int ) ;

__attribute__((used)) static void
_inq(struct cam_sim *sim, union ccb *ccb)
{
     struct ccb_pathinq *cpi = &ccb->cpi;
     isc_session_t *sp = cam_sim_softc(sim);

     debug_called(8);
     debug(3, "sid=%d target=%d lun=%jx", sp->sid, ccb->ccb_h.target_id, (uintmax_t)ccb->ccb_h.target_lun);

     cpi->version_num = 1;
     cpi->hba_inquiry = PI_SDTR_ABLE | PI_TAG_ABLE | PI_WIDE_32;
     cpi->target_sprt = 0;
     cpi->hba_misc = 0;
     cpi->hba_eng_cnt = 0;
     cpi->max_target = 0;
     cpi->initiator_id = ISCSI_MAX_TARGETS;
     cpi->max_lun = sp->opt.maxluns - 1;
     cpi->bus_id = cam_sim_bus(sim);
     cpi->base_transfer_speed = 3300;
     strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
     strlcpy(cpi->hba_vid, "iSCSI", HBA_IDLEN);
     strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
     cpi->unit_number = cam_sim_unit(sim);
     cpi->ccb_h.status = CAM_REQ_CMP;




}
