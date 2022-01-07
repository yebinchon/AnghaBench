
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccb_hdr {int func_code; int status; } ;
union ccb {int ccg; struct ccb_hdr ccb_h; } ;
struct vtscsi_softc {int vtscsi_flags; } ;
struct cam_sim {int dummy; } ;


 int CAM_FUNC_NOTAVAIL ;
 int CAM_NO_HBA ;
 int CAM_REQ_INVALID ;
 int VTSCSI_ERROR ;
 int VTSCSI_FLAG_DETACH ;
 int VTSCSI_LOCK_OWNED (struct vtscsi_softc*) ;
 int cam_calc_geometry (int *,int) ;
 struct vtscsi_softc* cam_sim_softc (struct cam_sim*) ;
 int vtscsi_cam_abort (struct vtscsi_softc*,union ccb*) ;
 int vtscsi_cam_get_tran_settings (struct vtscsi_softc*,union ccb*) ;
 int vtscsi_cam_path_inquiry (struct vtscsi_softc*,struct cam_sim*,union ccb*) ;
 int vtscsi_cam_reset_bus (struct vtscsi_softc*,union ccb*) ;
 int vtscsi_cam_reset_dev (struct vtscsi_softc*,union ccb*) ;
 int vtscsi_cam_scsi_io (struct vtscsi_softc*,struct cam_sim*,union ccb*) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,union ccb*,int) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vtscsi_cam_action(struct cam_sim *sim, union ccb *ccb)
{
 struct vtscsi_softc *sc;
 struct ccb_hdr *ccbh;

 sc = cam_sim_softc(sim);
 ccbh = &ccb->ccb_h;

 VTSCSI_LOCK_OWNED(sc);

 if (sc->vtscsi_flags & VTSCSI_FLAG_DETACH) {





  ccbh->status = CAM_NO_HBA;
  xpt_done(ccb);
  return;
 }

 switch (ccbh->func_code) {
 case 129:
  vtscsi_cam_scsi_io(sc, sim, ccb);
  break;

 case 128:
  ccbh->status = CAM_FUNC_NOTAVAIL;
  xpt_done(ccb);
  break;

 case 133:
  vtscsi_cam_get_tran_settings(sc, ccb);
  break;

 case 131:
  vtscsi_cam_reset_bus(sc, ccb);
  break;

 case 130:
  vtscsi_cam_reset_dev(sc, ccb);
  break;

 case 135:
  vtscsi_cam_abort(sc, ccb);
  break;

 case 134:
  cam_calc_geometry(&ccb->ccg, 1);
  xpt_done(ccb);
  break;

 case 132:
  vtscsi_cam_path_inquiry(sc, sim, ccb);
  break;

 default:
  vtscsi_dprintf(sc, VTSCSI_ERROR,
      "invalid ccb=%p func=%#x\n", ccb, ccbh->func_code);

  ccbh->status = CAM_REQ_INVALID;
  xpt_done(ccb);
  break;
 }
}
