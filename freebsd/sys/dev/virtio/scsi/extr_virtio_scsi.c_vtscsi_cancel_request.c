
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct vtscsi_softc {int vtscsi_flags; } ;
struct vtscsi_request {int vsr_flags; int vsr_callout; union ccb* vsr_ccb; } ;


 int CAM_NO_HBA ;
 int CAM_REQUEUE_REQ ;
 int VTSCSI_FLAG_DETACH ;
 int VTSCSI_LOCK (struct vtscsi_softc*) ;
 int VTSCSI_LOCK_NOTOWNED (struct vtscsi_softc*) ;
 int VTSCSI_LOCK_OWNED (struct vtscsi_softc*) ;
 int VTSCSI_REQ_FLAG_TIMEOUT_SET ;
 int VTSCSI_TRACE ;
 int VTSCSI_UNLOCK (struct vtscsi_softc*) ;
 int callout_drain (int *) ;
 int callout_stop (int *) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,struct vtscsi_request*,union ccb*) ;
 int vtscsi_enqueue_request (struct vtscsi_softc*,struct vtscsi_request*) ;
 int xpt_done (union ccb*) ;

__attribute__((used)) static void
vtscsi_cancel_request(struct vtscsi_softc *sc, struct vtscsi_request *req)
{
 union ccb *ccb;
 int detach;

 ccb = req->vsr_ccb;

 vtscsi_dprintf(sc, VTSCSI_TRACE, "req=%p ccb=%p\n", req, ccb);
 detach = (sc->vtscsi_flags & VTSCSI_FLAG_DETACH) != 0;
 if (detach != 0)
  VTSCSI_LOCK_NOTOWNED(sc);
 else
  VTSCSI_LOCK_OWNED(sc);

 if (req->vsr_flags & VTSCSI_REQ_FLAG_TIMEOUT_SET) {
  if (detach != 0)
   callout_drain(&req->vsr_callout);
  else
   callout_stop(&req->vsr_callout);
 }

 if (ccb != ((void*)0)) {
  if (detach != 0) {
   VTSCSI_LOCK(sc);
   ccb->ccb_h.status = CAM_NO_HBA;
  } else
   ccb->ccb_h.status = CAM_REQUEUE_REQ;
  xpt_done(ccb);
  if (detach != 0)
   VTSCSI_UNLOCK(sc);
 }

 vtscsi_enqueue_request(sc, req);
}
