
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct vtscsi_softc {int vtscsi_flags; } ;
struct virtio_scsi_ctrl_tmf_resp {scalar_t__ response; } ;
struct vtscsi_request {scalar_t__ vsr_state; struct vtscsi_request* vsr_timedout_req; struct virtio_scsi_ctrl_tmf_resp vsr_tmf_resp; } ;


 scalar_t__ VIRTIO_SCSI_S_FUNCTION_COMPLETE ;
 int VTSCSI_FLAG_DETACH ;
 int VTSCSI_FLAG_RESET ;
 scalar_t__ VTSCSI_REQ_STATE_TIMEDOUT ;
 int VTSCSI_TRACE ;
 int vtscsi_dprintf (struct vtscsi_softc*,int ,char*,struct vtscsi_request*,struct vtscsi_request*,scalar_t__) ;
 int vtscsi_enqueue_request (struct vtscsi_softc*,struct vtscsi_request*) ;
 int vtscsi_reset_bus (struct vtscsi_softc*) ;

__attribute__((used)) static void
vtscsi_complete_abort_timedout_scsi_cmd(struct vtscsi_softc *sc,
    struct vtscsi_request *req)
{
 struct virtio_scsi_ctrl_tmf_resp *tmf_resp;
 struct vtscsi_request *to_req;
 uint8_t response;

 tmf_resp = &req->vsr_tmf_resp;
 response = tmf_resp->response;
 to_req = req->vsr_timedout_req;

 vtscsi_dprintf(sc, VTSCSI_TRACE, "req=%p to_req=%p response=%d\n",
     req, to_req, response);

 vtscsi_enqueue_request(sc, req);





 if (to_req->vsr_state != VTSCSI_REQ_STATE_TIMEDOUT)
  return;


 if (response == VIRTIO_SCSI_S_FUNCTION_COMPLETE)
  return;


 if (sc->vtscsi_flags & VTSCSI_FLAG_DETACH)
  return;


 if (sc->vtscsi_flags & VTSCSI_FLAG_RESET)
  return;

 vtscsi_reset_bus(sc);
}
