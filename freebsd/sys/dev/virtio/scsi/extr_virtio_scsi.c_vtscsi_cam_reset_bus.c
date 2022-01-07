
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct vtscsi_softc {int dummy; } ;


 int CAM_REQ_CMP ;
 int CAM_REQ_CMP_ERR ;
 int VTSCSI_TRACE ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,int,union ccb*,int ) ;
 int vtscsi_reset_bus (struct vtscsi_softc*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vtscsi_cam_reset_bus(struct vtscsi_softc *sc, union ccb *ccb)
{
 int error;

 error = vtscsi_reset_bus(sc);
 if (error == 0)
  ccb->ccb_h.status = CAM_REQ_CMP;
 else
  ccb->ccb_h.status = CAM_REQ_CMP_ERR;

 vtscsi_dprintf(sc, VTSCSI_TRACE, "error=%d ccb=%p status=%#x\n",
     error, ccb, ccb->ccb_h.status);

 xpt_done(ccb);
}
