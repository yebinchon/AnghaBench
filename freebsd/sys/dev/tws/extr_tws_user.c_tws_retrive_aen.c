
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_long ;
typedef size_t u_int16_t ;
struct TYPE_3__ {scalar_t__ head; scalar_t__ tail; size_t depth; scalar_t__ q; scalar_t__ overflow; } ;
struct tws_softc {TYPE_1__ aen_q; } ;
struct TYPE_4__ {void* status; } ;
struct tws_ioctl_packet {struct tws_event_packet* data_buf; TYPE_2__ driver_pkt; } ;
struct tws_event_packet {int retrieved; int sequence_id; } ;


 void* TWS_AEN_NO_EVENTS ;
 void* TWS_AEN_OVERFLOW ;
 int TWS_AEN_RETRIEVED ;




 int TWS_TRACE_DEBUG (struct tws_softc*,char*,struct tws_softc*,int) ;
 int memcpy (struct tws_event_packet*,struct tws_event_packet*,int) ;

__attribute__((used)) static void
tws_retrive_aen(struct tws_softc *sc, u_long cmd,
                            struct tws_ioctl_packet *ubuf)
{
    u_int16_t index=0;
    struct tws_event_packet eventp, *qp;

    if ( sc->aen_q.head == sc->aen_q.tail ) {
        ubuf->driver_pkt.status = TWS_AEN_NO_EVENTS;
        return;
    }

    ubuf->driver_pkt.status = 0;





    if ( sc->aen_q.overflow ) {
        ubuf->driver_pkt.status = TWS_AEN_OVERFLOW;
        sc->aen_q.overflow = 0;
    }

    qp = (struct tws_event_packet *)sc->aen_q.q;

    switch (cmd) {
        case 131 :
            index = sc->aen_q.head;
            break;
        case 130 :

            index = (sc->aen_q.depth + sc->aen_q.tail - 1) % sc->aen_q.depth;
            break;
        case 129 :
            memcpy(&eventp, ubuf->data_buf, sizeof(struct tws_event_packet));
            index = sc->aen_q.head;
            do {
                if ( qp[index].sequence_id ==
                           (eventp.sequence_id + 1) )
                    break;
                index = (index+1) % sc->aen_q.depth;
            }while ( index != sc->aen_q.tail );
            if ( index == sc->aen_q.tail ) {
                ubuf->driver_pkt.status = TWS_AEN_NO_EVENTS;
                return;
            }
            break;
        case 128 :
            memcpy(&eventp, ubuf->data_buf, sizeof(struct tws_event_packet));
            index = sc->aen_q.head;
            do {
                if ( qp[index].sequence_id ==
                           (eventp.sequence_id - 1) )
                    break;
                index = (index+1) % sc->aen_q.depth;
            }while ( index != sc->aen_q.tail );
            if ( index == sc->aen_q.tail ) {
                ubuf->driver_pkt.status = TWS_AEN_NO_EVENTS;
                return;
            }
            break;
        default :
            TWS_TRACE_DEBUG(sc, "not a valid event", sc, cmd);
            ubuf->driver_pkt.status = TWS_AEN_NO_EVENTS;
            return;
    }

    memcpy(ubuf->data_buf, &qp[index],
                           sizeof(struct tws_event_packet));
    qp[index].retrieved = TWS_AEN_RETRIEVED;

    return;

}
