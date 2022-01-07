
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t u_int16_t ;
struct mtx {int dummy; } ;
struct tws_softc {struct tws_request* reqs; struct mtx gen_lock; struct mtx q_lock; } ;
struct tws_request {scalar_t__ state; size_t type; int * prev; int next; int timeout; int * ccb_ptr; int * cb; int error_code; int flags; scalar_t__ length; int * data; TYPE_1__* cmd_pkt; } ;
struct tws_command_apache {int dummy; } ;
struct TYPE_2__ {int cmd; } ;


 int TWS_DIR_UNKNOWN ;
 int TWS_FREE_Q ;
 int TWS_REQ_RET_INVALID ;
 scalar_t__ TWS_REQ_STATE_BUSY ;
 scalar_t__ TWS_REQ_STATE_FREE ;
 scalar_t__ TWS_REQ_STATE_TRAN ;
 size_t TWS_REQ_TYPE_SCSI_IO ;
 int bzero (int *,int) ;
 int callout_stop (int *) ;
 int mtx_lock (struct mtx*) ;
 int mtx_unlock (struct mtx*) ;
 struct tws_request* tws_q_remove_head (struct tws_softc*,int ) ;

struct tws_request *
tws_get_request(struct tws_softc *sc, u_int16_t type)
{
    struct mtx *my_mutex = ((type == TWS_REQ_TYPE_SCSI_IO) ? &sc->q_lock : &sc->gen_lock);
    struct tws_request *r = ((void*)0);

    mtx_lock(my_mutex);

    if (type == TWS_REQ_TYPE_SCSI_IO) {
        r = tws_q_remove_head(sc, TWS_FREE_Q);
    } else {
        if ( sc->reqs[type].state == TWS_REQ_STATE_FREE ) {
            r = &sc->reqs[type];
        }
    }

    if ( r ) {
        bzero(&r->cmd_pkt->cmd, sizeof(struct tws_command_apache));
        r->data = ((void*)0);
        r->length = 0;
        r->type = type;
        r->flags = TWS_DIR_UNKNOWN;
        r->error_code = TWS_REQ_RET_INVALID;
        r->cb = ((void*)0);
        r->ccb_ptr = ((void*)0);
 callout_stop(&r->timeout);
        r->next = r->prev = ((void*)0);

        r->state = ((type == TWS_REQ_TYPE_SCSI_IO) ? TWS_REQ_STATE_TRAN : TWS_REQ_STATE_BUSY);
    }

    mtx_unlock(my_mutex);

    return(r);
}
