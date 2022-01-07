
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int q_lock; } ;
struct tws_request {struct tws_softc* sc; } ;


 int TWS_FREE_Q ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,struct tws_softc*,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int tws_q_insert_tail (struct tws_softc*,struct tws_request*,int ) ;

void
tws_release_request(struct tws_request *req)
{

    struct tws_softc *sc = req->sc;

    TWS_TRACE_DEBUG(sc, "entry", sc, 0);
    mtx_lock(&sc->q_lock);
    tws_q_insert_tail(sc, req, TWS_FREE_Q);
    mtx_unlock(&sc->q_lock);
}
