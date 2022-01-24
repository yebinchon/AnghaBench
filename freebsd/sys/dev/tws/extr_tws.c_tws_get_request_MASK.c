#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  size_t u_int16_t ;
struct mtx {int dummy; } ;
struct tws_softc {struct tws_request* reqs; struct mtx gen_lock; struct mtx q_lock; } ;
struct tws_request {scalar_t__ state; size_t type; int /*<<< orphan*/ * prev; int /*<<< orphan*/  next; int /*<<< orphan*/  timeout; int /*<<< orphan*/ * ccb_ptr; int /*<<< orphan*/ * cb; int /*<<< orphan*/  error_code; int /*<<< orphan*/  flags; scalar_t__ length; int /*<<< orphan*/ * data; TYPE_1__* cmd_pkt; } ;
struct tws_command_apache {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  cmd; } ;

/* Variables and functions */
 int /*<<< orphan*/  TWS_DIR_UNKNOWN ; 
 int /*<<< orphan*/  TWS_FREE_Q ; 
 int /*<<< orphan*/  TWS_REQ_RET_INVALID ; 
 scalar_t__ TWS_REQ_STATE_BUSY ; 
 scalar_t__ TWS_REQ_STATE_FREE ; 
 scalar_t__ TWS_REQ_STATE_TRAN ; 
 size_t TWS_REQ_TYPE_SCSI_IO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (struct mtx*) ; 
 int /*<<< orphan*/  FUNC3 (struct mtx*) ; 
 struct tws_request* FUNC4 (struct tws_softc*,int /*<<< orphan*/ ) ; 

struct tws_request *
FUNC5(struct tws_softc *sc, u_int16_t type)
{
    struct mtx *my_mutex = ((type == TWS_REQ_TYPE_SCSI_IO) ? &sc->q_lock : &sc->gen_lock);
    struct tws_request *r = NULL;

    FUNC2(my_mutex);

    if (type == TWS_REQ_TYPE_SCSI_IO) {
        r = FUNC4(sc, TWS_FREE_Q);
    } else {
        if ( sc->reqs[type].state == TWS_REQ_STATE_FREE ) {
            r = &sc->reqs[type];
        }
    }

    if ( r ) {
        FUNC0(&r->cmd_pkt->cmd, sizeof(struct tws_command_apache));
        r->data = NULL;
        r->length = 0;
        r->type = type;
        r->flags = TWS_DIR_UNKNOWN;
        r->error_code = TWS_REQ_RET_INVALID;
        r->cb = NULL;
        r->ccb_ptr = NULL;
	FUNC1(&r->timeout);
        r->next = *(r->prev = NULL);

        r->state = ((type == TWS_REQ_TYPE_SCSI_IO) ? TWS_REQ_STATE_TRAN : TWS_REQ_STATE_BUSY);
    }

    FUNC3(my_mutex);

    return(r);
}