
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int scsi_cmd_timeouts; } ;
struct vtscsi_softc {int vtscsi_flags; TYPE_1__ vtscsi_stats; int vtscsi_request_vq; } ;
struct vtscsi_request {scalar_t__ vsr_state; int vsr_flags; int vsr_ccb; struct vtscsi_softc* vsr_softc; } ;


 int VTSCSI_ERROR ;
 int VTSCSI_FLAG_DETACH ;
 int VTSCSI_INFO ;
 int VTSCSI_REQ_FLAG_TIMEOUT_SET ;
 scalar_t__ VTSCSI_REQ_STATE_FREE ;
 scalar_t__ VTSCSI_REQ_STATE_INUSE ;
 scalar_t__ VTSCSI_REQ_STATE_TIMEDOUT ;
 scalar_t__ vtscsi_abort_timedout_scsi_cmd (struct vtscsi_softc*,struct vtscsi_request*) ;
 int vtscsi_complete_vq (struct vtscsi_softc*,int ) ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,...) ;
 int vtscsi_reset_bus (struct vtscsi_softc*) ;

__attribute__((used)) static void
vtscsi_timedout_scsi_cmd(void *xreq)
{
 struct vtscsi_softc *sc;
 struct vtscsi_request *to_req;

 to_req = xreq;
 sc = to_req->vsr_softc;

 vtscsi_dprintf(sc, VTSCSI_INFO, "timedout req=%p ccb=%p state=%#x\n",
     to_req, to_req->vsr_ccb, to_req->vsr_state);


 if (sc->vtscsi_flags & VTSCSI_FLAG_DETACH)
  return;





 if (to_req->vsr_state != VTSCSI_REQ_STATE_INUSE ||
     (to_req->vsr_flags & VTSCSI_REQ_FLAG_TIMEOUT_SET) == 0)
  return;





 vtscsi_complete_vq(sc, sc->vtscsi_request_vq);
 if (to_req->vsr_state == VTSCSI_REQ_STATE_FREE)
  return;

 sc->vtscsi_stats.scsi_cmd_timeouts++;
 to_req->vsr_state = VTSCSI_REQ_STATE_TIMEDOUT;

 if (vtscsi_abort_timedout_scsi_cmd(sc, to_req) == 0)
  return;

 vtscsi_dprintf(sc, VTSCSI_ERROR, "resetting bus\n");
 vtscsi_reset_bus(sc);
}
