
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_req_free; int vtscsi_sim; } ;
struct vtscsi_request {int vsr_uresp; int vsr_ureq; scalar_t__ vsr_flags; int vsr_state; int * vsr_ptr0; int * vsr_complete; int * vsr_ccb; struct vtscsi_softc* vsr_softc; } ;


 int KASSERT (int,char*) ;
 int TAILQ_INSERT_TAIL (int *,struct vtscsi_request*,int ) ;
 int VTSCSI_REQUEST ;
 int VTSCSI_REQ_STATE_FREE ;
 int VTSCSI_TRACE ;
 int bzero (int *,int) ;
 int vsr_link ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,struct vtscsi_request*) ;
 scalar_t__ vtscsi_thaw_simq (struct vtscsi_softc*,int ) ;
 int xpt_release_simq (int ,int) ;

__attribute__((used)) static void
vtscsi_enqueue_request(struct vtscsi_softc *sc, struct vtscsi_request *req)
{

 KASSERT(req->vsr_softc == sc,
     ("non-matching request vsr_softc %p/%p", req->vsr_softc, sc));

 vtscsi_dprintf(sc, VTSCSI_TRACE, "req=%p\n", req);


 if (vtscsi_thaw_simq(sc, VTSCSI_REQUEST) != 0)
  xpt_release_simq(sc->vtscsi_sim, 1);

 req->vsr_ccb = ((void*)0);
 req->vsr_complete = ((void*)0);
 req->vsr_ptr0 = ((void*)0);
 req->vsr_state = VTSCSI_REQ_STATE_FREE;
 req->vsr_flags = 0;

 bzero(&req->vsr_ureq, sizeof(req->vsr_ureq));
 bzero(&req->vsr_uresp, sizeof(req->vsr_uresp));






 TAILQ_INSERT_TAIL(&sc->vtscsi_req_free, req, vsr_link);
}
