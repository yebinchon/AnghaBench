
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int status; } ;
union ccb {TYPE_1__ ccb_h; } ;
struct tws_softc {int q_lock; int sim_lock; } ;
struct tws_request {scalar_t__ ccb_ptr; int sc; int error_code; int timeout; int request_id; } ;


 int CAM_REQUEUE_REQ ;
 int CAM_SCSI_BUS_RESET ;
 int CAM_SIM_QUEUED ;
 int TWS_BUSY_Q ;
 int TWS_FREE_Q ;
 int TWS_REQ_RET_RESET ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,int ) ;
 int callout_stop (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int tws_q_insert_tail (struct tws_softc*,struct tws_request*,int ) ;
 struct tws_request* tws_q_remove_tail (struct tws_softc*,int ) ;
 int tws_unmap_request (int ,struct tws_request*) ;
 int xpt_done (scalar_t__) ;

__attribute__((used)) static void
tws_drain_busy_queue(struct tws_softc *sc)
{
    struct tws_request *req;
    union ccb *ccb;
    TWS_TRACE_DEBUG(sc, "entry", 0, 0);

    mtx_lock(&sc->q_lock);
    req = tws_q_remove_tail(sc, TWS_BUSY_Q);
    mtx_unlock(&sc->q_lock);
    while ( req ) {
        TWS_TRACE_DEBUG(sc, "moved to TWS_COMPLETE_Q", 0, req->request_id);
 callout_stop(&req->timeout);

        req->error_code = TWS_REQ_RET_RESET;
        ccb = (union ccb *)(req->ccb_ptr);

        ccb->ccb_h.status &= ~CAM_SIM_QUEUED;
        ccb->ccb_h.status |= CAM_REQUEUE_REQ;
        ccb->ccb_h.status |= CAM_SCSI_BUS_RESET;

        tws_unmap_request(req->sc, req);

        mtx_lock(&sc->sim_lock);
        xpt_done(req->ccb_ptr);
        mtx_unlock(&sc->sim_lock);

        mtx_lock(&sc->q_lock);
        tws_q_insert_tail(sc, req, TWS_FREE_Q);
        req = tws_q_remove_tail(sc, TWS_BUSY_Q);
        mtx_unlock(&sc->q_lock);
    }
}
