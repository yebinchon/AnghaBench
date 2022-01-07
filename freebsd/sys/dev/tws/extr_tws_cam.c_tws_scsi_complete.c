
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct tws_softc {int q_lock; int sim_lock; } ;
struct tws_request {TYPE_2__* ccb_ptr; struct tws_softc* sc; int timeout; } ;
struct TYPE_3__ {int status; } ;
struct TYPE_4__ {TYPE_1__ ccb_h; } ;


 int CAM_REQ_CMP ;
 int TWS_BUSY_Q ;
 int TWS_FREE_Q ;
 int callout_stop (int *) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int tws_q_insert_tail (struct tws_softc*,struct tws_request*,int ) ;
 int tws_q_remove_request (struct tws_softc*,struct tws_request*,int ) ;
 int tws_unmap_request (struct tws_softc*,struct tws_request*) ;
 int xpt_done (TYPE_2__*) ;

__attribute__((used)) static void
tws_scsi_complete(struct tws_request *req)
{
    struct tws_softc *sc = req->sc;

    mtx_lock(&sc->q_lock);
    tws_q_remove_request(sc, req, TWS_BUSY_Q);
    mtx_unlock(&sc->q_lock);

    callout_stop(&req->timeout);
    tws_unmap_request(req->sc, req);


    req->ccb_ptr->ccb_h.status = CAM_REQ_CMP;
    mtx_lock(&sc->sim_lock);
    xpt_done(req->ccb_ptr);
    mtx_unlock(&sc->sim_lock);

    mtx_lock(&sc->q_lock);
    tws_q_insert_tail(sc, req, TWS_FREE_Q);
    mtx_unlock(&sc->q_lock);
}
