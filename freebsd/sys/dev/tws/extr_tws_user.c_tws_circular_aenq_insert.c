
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int8_t ;
typedef size_t u_int16_t ;
struct tws_softc {int gen_lock; } ;
struct tws_event_packet {scalar_t__ retrieved; } ;
struct tws_circular_q {size_t head; size_t tail; size_t volatile depth; int overflow; scalar_t__ q; } ;


 int MA_OWNED ;
 scalar_t__ TWS_AEN_RETRIEVED ;
 int memcpy (struct tws_event_packet*,struct tws_event_packet*,int) ;
 int mtx_assert (int *,int ) ;

void
tws_circular_aenq_insert(struct tws_softc *sc, struct tws_circular_q *cq,
struct tws_event_packet *aen)
{

    struct tws_event_packet *q = (struct tws_event_packet *)cq->q;
    volatile u_int16_t head, tail;
    u_int8_t retr;
    mtx_assert(&sc->gen_lock, MA_OWNED);

    head = cq->head;
    tail = cq->tail;
    retr = q[tail].retrieved;

    memcpy(&q[tail], aen, sizeof(struct tws_event_packet));
    tail = (tail+1) % cq->depth;

    if ( head == tail ) {
        if ( retr != TWS_AEN_RETRIEVED )
            cq->overflow = 1;
        cq->head = (head+1) % cq->depth;
    }
    cq->tail = tail;

}
