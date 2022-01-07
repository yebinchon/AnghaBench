
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct vtscsi_softc {int dummy; } ;
struct vtscsi_request {union ccb* vsr_ccb; } ;


 int CAM_REQUEUE_REQ ;
 int ENOBUFS ;
 int VTSCSI_REQUEST ;
 struct vtscsi_request* vtscsi_dequeue_request (struct vtscsi_softc*) ;
 int vtscsi_enqueue_request (struct vtscsi_softc*,struct vtscsi_request*) ;
 int vtscsi_execute_scsi_cmd (struct vtscsi_softc*,struct vtscsi_request*) ;
 int vtscsi_freeze_simq (struct vtscsi_softc*,int ) ;

__attribute__((used)) static int
vtscsi_start_scsi_cmd(struct vtscsi_softc *sc, union ccb *ccb)
{
 struct vtscsi_request *req;
 int error;

 req = vtscsi_dequeue_request(sc);
 if (req == ((void*)0)) {
  ccb->ccb_h.status = CAM_REQUEUE_REQ;
  vtscsi_freeze_simq(sc, VTSCSI_REQUEST);
  return (ENOBUFS);
 }

 req->vsr_ccb = ccb;

 error = vtscsi_execute_scsi_cmd(sc, req);
 if (error)
  vtscsi_enqueue_request(sc, req);

 return (error);
}
