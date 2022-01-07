
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vtscsi_softc {int vtscsi_control_vq; } ;
struct vtscsi_request {int vsr_flags; } ;


 int VTSCSI_REQ_FLAG_COMPLETE ;
 int VTSCSI_REQ_FLAG_POLLED ;
 int vtscsi_complete_vq (struct vtscsi_softc*,int ) ;

__attribute__((used)) static void
vtscsi_poll_ctrl_req(struct vtscsi_softc *sc, struct vtscsi_request *req)
{


 req->vsr_flags |= VTSCSI_REQ_FLAG_POLLED;
 do
  vtscsi_complete_vq(sc, sc->vtscsi_control_vq);
 while ((req->vsr_flags & VTSCSI_REQ_FLAG_COMPLETE) == 0);

 req->vsr_flags &= ~VTSCSI_REQ_FLAG_POLLED;
}
