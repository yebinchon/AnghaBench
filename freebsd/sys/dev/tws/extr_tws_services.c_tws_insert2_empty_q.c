
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int8_t ;
struct tws_softc {struct tws_request** q_tail; struct tws_request** q_head; int q_lock; } ;
struct tws_request {int * prev; int next; } ;


 int MA_OWNED ;
 int mtx_assert (int *,int ) ;

__attribute__((used)) static void
tws_insert2_empty_q(struct tws_softc *sc, struct tws_request *req,
                                u_int8_t q_type )
{

    mtx_assert(&sc->q_lock, MA_OWNED);
    req->next = req->prev = ((void*)0);
    sc->q_head[q_type] = sc->q_tail[q_type] = req;

}
