
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int8_t ;
struct tws_softc {struct tws_request** q_head; struct tws_request** q_tail; int q_lock; } ;
struct tws_request {size_t request_id; TYPE_1__* prev; struct tws_request* next; } ;
struct TYPE_2__ {struct tws_request* next; } ;


 int MA_OWNED ;
 int TWS_TRACE_DEBUG (struct tws_softc*,char*,int ,size_t) ;
 int mtx_assert (int *,int ) ;
 struct tws_request* tws_q_remove_head (struct tws_softc*,size_t) ;
 struct tws_request* tws_q_remove_tail (struct tws_softc*,size_t) ;

struct tws_request *
tws_q_remove_request(struct tws_softc *sc, struct tws_request *req,
                                 u_int8_t q_type )
{

    struct tws_request *r;

    mtx_assert(&sc->q_lock, MA_OWNED);
    if ( req == ((void*)0) ) {
        TWS_TRACE_DEBUG(sc, "null req", 0, q_type);
        return(((void*)0));
    }

    if ( req == sc->q_head[q_type] )
        return(tws_q_remove_head(sc, q_type));
    if ( req == sc->q_tail[q_type] )
        return(tws_q_remove_tail(sc, q_type));







    if ( req->next == ((void*)0) || req->prev == ((void*)0) ) {
        TWS_TRACE_DEBUG(sc, "invalid req", 0, q_type);
        return(((void*)0));
    }


    r = sc->q_head[q_type];
    while ( r ) {
        if ( req == r )
            break;
        r = r->next;
    }

    if ( !r ) {
        TWS_TRACE_DEBUG(sc, "req not in q", 0, req->request_id);
        return(((void*)0));
    }


    req->prev->next = r->next;
    req->next->prev = r->prev;
    req->next = ((void*)0);
    req->prev = ((void*)0);
    return(req);
}
