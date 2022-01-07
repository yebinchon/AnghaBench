
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_8__ {int func_code; int status; int path; int target_lun; int target_id; } ;
struct TYPE_7__ {void* status; } ;
struct ccb_pathinq {int version_num; int hba_misc; int initiator_id; int base_transfer_speed; int transport_version; TYPE_3__ ccb_h; int maxio; void* protocol_version; void* protocol; void* transport; int dev_name; int hba_vid; int sim_vid; int unit_number; int bus_id; int max_lun; int max_target; int vuhba_flags; int hba_eng_cnt; int hba_inquiry; int target_sprt; } ;
struct TYPE_6__ {int valid; } ;
struct TYPE_5__ {int valid; } ;
struct ccb_trans_settings {int transport_version; TYPE_2__ xport_specific; TYPE_1__ proto_specific; void* transport; void* protocol_version; void* protocol; } ;
union ccb {TYPE_4__ ccb_h; struct ccb_pathinq cpi; int ccg; struct ccb_trans_settings cts; } ;
struct ps3cdrom_xfer {union ccb* x_ccb; int x_dmamap; } ;
struct ps3cdrom_softc {int sc_free_xferq; int sc_dmatag; int sc_dev; } ;
struct cam_sim {int dummy; } ;
typedef int device_t ;


 int CAM_DEBUG (int ,int ,char*) ;
 int CAM_DEBUG_TRACE ;
 int CAM_FUNC_NOTAVAIL ;
 int CAM_LUN_INVALID ;
 void* CAM_REQ_CMP ;
 int CAM_REQ_INPROG ;
 int CAM_REQ_INVALID ;
 int CAM_SCSI_STATUS_ERROR ;
 int CAM_STATUS_MASK ;
 int CAM_TID_INVALID ;
 int DEV_IDLEN ;
 int EINPROGRESS ;
 int HBA_IDLEN ;
 int KASSERT (int ,char*) ;
 int PAGE_SIZE ;
 int PIM_NOBUSRESET ;
 int PIM_NO_6_BYTE ;
 int PIM_SEQSCAN ;
 int PI_SDTR_ABLE ;
 void* PROTO_SCSI ;
 int PS3CDROM_ASSERT_LOCKED (struct ps3cdrom_softc*) ;
 void* SCSI_REV_2 ;
 int SIM_IDLEN ;
 struct ps3cdrom_xfer* TAILQ_FIRST (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct ps3cdrom_xfer*,int ) ;
 int TAILQ_REMOVE (int *,struct ps3cdrom_xfer*,int ) ;
 void* XPORT_SPI ;







 int bus_dmamap_load_ccb (int ,int ,union ccb*,int ,struct ps3cdrom_xfer*,int ) ;
 int bzero (int ,int) ;
 int cam_calc_geometry (int *,int) ;
 int cam_sim_bus (struct cam_sim*) ;
 char* cam_sim_name (struct cam_sim*) ;
 scalar_t__ cam_sim_softc (struct cam_sim*) ;
 int cam_sim_unit (struct cam_sim*) ;
 int device_printf (int ,char*,int) ;
 int ps3cdrom_transfer ;
 int strlcpy (int ,char*,int ) ;
 int x_queue ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
ps3cdrom_action(struct cam_sim *sim, union ccb *ccb)
{
 struct ps3cdrom_softc *sc = (struct ps3cdrom_softc *)cam_sim_softc(sim);
 device_t dev = sc->sc_dev;
 struct ps3cdrom_xfer *xp;
 int err;

 PS3CDROM_ASSERT_LOCKED(sc);

 CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE,
    ("function code 0x%02x\n", ccb->ccb_h.func_code));

 switch (ccb->ccb_h.func_code) {
 case 129:
  if ((ccb->ccb_h.status & CAM_STATUS_MASK) != CAM_REQ_INPROG)
   break;

  if(ccb->ccb_h.target_id > 0) {
   ccb->ccb_h.status = CAM_TID_INVALID;
   break;
  }

  if(ccb->ccb_h.target_lun > 0) {
   ccb->ccb_h.status = CAM_LUN_INVALID;
   break;
  }

  xp = TAILQ_FIRST(&sc->sc_free_xferq);

  KASSERT(xp != ((void*)0), ("no free transfers"));

  xp->x_ccb = ccb;

  TAILQ_REMOVE(&sc->sc_free_xferq, xp, x_queue);

  err = bus_dmamap_load_ccb(sc->sc_dmatag, xp->x_dmamap,
      ccb, ps3cdrom_transfer, xp, 0);
  if (err && err != EINPROGRESS) {
   device_printf(dev, "Could not load DMA map (%d)\n",
       err);

   xp->x_ccb = ((void*)0);
   TAILQ_INSERT_TAIL(&sc->sc_free_xferq, xp, x_queue);
   ccb->ccb_h.status = CAM_SCSI_STATUS_ERROR;
   break;
  }
  return;
 case 128:
  ccb->ccb_h.status = CAM_FUNC_NOTAVAIL;
  break;
 case 133:
 {
  struct ccb_trans_settings *cts = &ccb->cts;

  cts->protocol = PROTO_SCSI;
  cts->protocol_version = SCSI_REV_2;
  cts->transport = XPORT_SPI;
  cts->transport_version = 2;
  cts->proto_specific.valid = 0;
  cts->xport_specific.valid = 0;
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 case 131:
 case 130:
  ccb->ccb_h.status = CAM_REQ_CMP;
  break;
 case 134:
  cam_calc_geometry(&ccb->ccg, 1);
  break;
 case 132:
 {
  struct ccb_pathinq *cpi = &ccb->cpi;

  cpi->version_num = 1;
  cpi->hba_inquiry = 0;
  cpi->target_sprt = 0;
  cpi->hba_inquiry = PI_SDTR_ABLE;
  cpi->hba_misc = PIM_NOBUSRESET | PIM_SEQSCAN | PIM_NO_6_BYTE;
  cpi->hba_eng_cnt = 0;
  bzero(cpi->vuhba_flags, sizeof(cpi->vuhba_flags));
  cpi->max_target = 0;
  cpi->max_lun = 0;
  cpi->initiator_id = 7;
  cpi->bus_id = cam_sim_bus(sim);
  cpi->unit_number = cam_sim_unit(sim);
  cpi->base_transfer_speed = 150000;
  strlcpy(cpi->sim_vid, "FreeBSD", SIM_IDLEN);
  strlcpy(cpi->hba_vid, "Sony", HBA_IDLEN);
  strlcpy(cpi->dev_name, cam_sim_name(sim), DEV_IDLEN);
  cpi->transport = XPORT_SPI;
  cpi->transport_version = 2;
  cpi->protocol = PROTO_SCSI;
  cpi->protocol_version = SCSI_REV_2;
  cpi->maxio = PAGE_SIZE;
  cpi->ccb_h.status = CAM_REQ_CMP;
  break;
 }
 default:
  CAM_DEBUG(ccb->ccb_h.path, CAM_DEBUG_TRACE,
      ("unsupported function code 0x%02x\n",
      ccb->ccb_h.func_code));
  ccb->ccb_h.status = CAM_REQ_INVALID;
  break;
 }

 xpt_done(ccb);
}
