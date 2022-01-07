
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct tws_softc {struct tws_request** q_head; int q_lock; } ;
struct tws_request {struct tws_request* prev; struct tws_request* next; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;
 int tws_insert2_empty_q (struct tws_softc*,struct tws_request*,size_t) ;

void
tws_q_insert_head(struct tws_softc *sc, struct tws_request *req,
                                u_int8_t q_type )
{

    mtx_assert(&sc->q_lock, MA_OWNED);
    if ( sc->q_head[q_type] == ((void*)0) ) {
        tws_insert2_empty_q(sc, req, q_type);
    } else {
        req->next = sc->q_head[q_type];
        req->prev = ((void*)0);
        sc->q_head[q_type]->prev = req;
        sc->q_head[q_type] = req;
    }

}
