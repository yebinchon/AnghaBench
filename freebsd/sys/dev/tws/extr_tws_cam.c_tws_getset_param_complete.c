
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int dummy; } ;
struct tws_request {int state; int data; int timeout; int request_id; struct tws_softc* sc; } ;


 int M_TWS ;
 int TWS_REQ_STATE_FREE ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,struct tws_request*,int ) ;
 int callout_stop (int *) ;
 int free (int ,int ) ;
 int tws_unmap_request (struct tws_softc*,struct tws_request*) ;

void
tws_getset_param_complete(struct tws_request *req)
{
    struct tws_softc *sc = req->sc;

    TWS_TRACE_DEBUG(sc, "getset complete", req, req->request_id);

    callout_stop(&req->timeout);
    tws_unmap_request(sc, req);

    free(req->data, M_TWS);

    req->state = TWS_REQ_STATE_FREE;
}
