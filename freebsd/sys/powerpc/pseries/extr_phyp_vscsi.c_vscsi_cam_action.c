
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
struct TYPE_8__ {int valid; } ;
struct TYPE_7__ {int valid; } ;
struct TYPE_9__ {TYPE_3__ xport_specific; TYPE_2__ proto_specific; int transport_version; void* transport; void* protocol_version; void* protocol; } ;
struct TYPE_6__ {void* status; } ;
struct ccb_pathinq {int version_num; int base_transfer_speed; TYPE_1__ ccb_h; void* protocol_version; void* protocol; int transport_version; void* transport; int bus_id; int unit_number; int dev_name; int hba_vid; int sim_vid; int initiator_id; int max_lun; int max_target; int hba_eng_cnt; int target_sprt; int hba_misc; int hba_inquiry; } ;
union ccb {TYPE_5__ ccb_h; TYPE_4__ cts; struct ccb_pathinq cpi; } ;
struct vscsi_xfer {int dmamap; union ccb* ccb; } ;
struct vscsi_softc {int data_tag; int active_xferq; int free_xferq; int io_lock; } ;
struct cam_sim {int dummy; } ;


 void* CAM_FUNC_NOTAVAIL ;
 void* CAM_REQ_CMP ;
 void* CAM_REQ_INPROG ;
 void* CAM_REQ_INVALID ;
 int DEV_IDLEN ;
 int HBA_IDLEN ;
 int MA_OWNED ;
 int PIM_EXTLUNS ;
 int PI_TAG_ABLE ;
 void* PROTO_SCSI ;
 void* SCSI_REV_SPC4 ;
 int SIM_IDLEN ;
 struct vscsi_xfer* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct vscsi_xfer*,int ) ;
 int TAILQ_REMOVE (int *,struct vscsi_xfer*,int ) ;
 void* XPORT_SRP ;






 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct vscsi_xfer*,int ) ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 struct vscsi_softc* cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int mtx_assert (int *,int ) ;
 int panic (char*) ;
 int queue ;
 int strlcpy (int ,char*,int ) ;
 int vscsi_scsi_command ;
 int vscsi_task_management (struct vscsi_softc*,union ccb*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vscsi_cam_action(struct cam_sim *sim, union ccb *ccb)
{
 struct vscsi_softc *sc = cam_sim_softc(sim);

 mtx_assert(&sc->io_lock, MA_OWNED);

 switch (ccb->ccb_h.func_code) {
 case 132:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;

  cpi->version_num = 1;
  cpi->hba_inquiry = PI_TAG_ABLE;
  cpi->hba_misc = PIM_EXTLUNS;
  cpi->target_sprt = 0;
  cpi->hba_eng_cnt = 0;
  cpi->max_target = 0;
  cpi->max_lun = 0;
  cpi->initiator_id = ~0;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "IBM", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->unit_number = cam_sim_unit(sim);
  cpi->bus_id = cam_sim_bus(sim);
  cpi->base_transfer_speed = 150000;
  cpi->transport = XPORT_SRP;
  cpi->transport_version = 0;
  cpi->protocol = PROTO_SCSI;
  cpi->protocol_version = SCSI_REV_SPC4;
  cpi->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 131:
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 130:
  ccb->ccb_h.status = CAM_REQ_INPROG;
  vscsi_task_management(sc, ccb);
  return;
 case 133:
  ccb->cts.protocol = PROTO_SCSI;
  ccb->cts.protocol_version = SCSI_REV_SPC4;
  ccb->cts.transport = XPORT_SRP;
  ccb->cts.transport_version = 0;
  ccb->cts.proto_specific.valid = 0;
  ccb->cts.xport_specific.valid = 0;
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 128:
  ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
  break;
 case 129:
 {
  struct vscsi_xfer *xp;

  ccb->ccb_h.status = CAM_REQ_INPROG;

  xp = TAILQ_FIRST(&sc->free_xferq);
  if (xp == ((void*)0))
   panic("SCSI queue flooded");
  xp->ccb = ccb;
  TAILQ_REMOVE(&sc->free_xferq, xp, queue);
  TAILQ_INSERT_TAIL(&sc->active_xferq, xp, queue);
  bus_dmamap_load_ccb(sc->data_tag, xp->dmamap,
      ccb, vscsi_scsi_command, xp, 0);

  return;
 }
 default:
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 }

 xpt_done(ccb);
 return;
}
