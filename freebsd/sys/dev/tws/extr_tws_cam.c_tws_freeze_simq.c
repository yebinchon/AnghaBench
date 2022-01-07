
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct tws_softc {int sim; } ;
struct tws_request {scalar_t__ type; scalar_t__ ccb_ptr; } ;


 int CAM_RELEASE_SIMQ ;
 int CAM_REQUEUE_REQ ;
 scalar_t__ TWS_REQ_TYPE_SCSI_IO ;
 int xpt_freeze_simq (int ,int) ;

__attribute__((used)) static void
tws_freeze_simq(struct tws_softc *sc, struct tws_request *req)
{

    if (req->type == TWS_REQ_TYPE_SCSI_IO) {
        union ccb *ccb = (union ccb *)(req->ccb_ptr);

        xpt_freeze_simq(sc->sim, 1);
        ccb->ccb_h.status |= CAM_RELEASE_SIMQ;
        ccb->ccb_h.status |= CAM_REQUEUE_REQ;
    }
}
