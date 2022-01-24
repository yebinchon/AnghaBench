#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {void* cid_index; } ;
struct TYPE_5__ {TYPE_3__ cfc_del; TYPE_3__ terminate; } ;
struct ecore_queue_state_params {TYPE_2__ params; int /*<<< orphan*/  cmd; int /*<<< orphan*/  ramrod_flags; int /*<<< orphan*/ * q_obj; int /*<<< orphan*/ * member_0; } ;
struct bxe_softc {TYPE_1__* sp_objs; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {size_t index; } ;
struct TYPE_4__ {int /*<<< orphan*/  q_obj; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct bxe_softc*,int /*<<< orphan*/ ,char*,int,size_t) ; 
 int /*<<< orphan*/  DBG_LOAD ; 
 int /*<<< orphan*/  ECORE_Q_CMD_CFC_DEL ; 
 int /*<<< orphan*/  ECORE_Q_CMD_HALT ; 
 int /*<<< orphan*/  ECORE_Q_CMD_TERMINATE ; 
 void* FIRST_TX_COS_INDEX ; 
 int /*<<< orphan*/  RAMROD_COMP_WAIT ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC2 (struct bxe_softc*,struct ecore_queue_state_params*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int
FUNC4(struct bxe_softc *sc,
               int              index)
{
    struct bxe_fastpath *fp = &sc->fp[index];
    struct ecore_queue_state_params q_params = { NULL };
    int rc;

    FUNC0(sc, DBG_LOAD, "stopping queue %d cid %d\n", index, fp->index);

    q_params.q_obj = &sc->sp_objs[fp->index].q_obj;
    /* We want to wait for completion in this context */
    FUNC1(RAMROD_COMP_WAIT, &q_params.ramrod_flags);

    /* Stop the primary connection: */

    /* ...halt the connection */
    q_params.cmd = ECORE_Q_CMD_HALT;
    rc = FUNC2(sc, &q_params);
    if (rc) {
        return (rc);
    }

    /* ...terminate the connection */
    q_params.cmd = ECORE_Q_CMD_TERMINATE;
    FUNC3(&q_params.params.terminate, 0, sizeof(q_params.params.terminate));
    q_params.params.terminate.cid_index = FIRST_TX_COS_INDEX;
    rc = FUNC2(sc, &q_params);
    if (rc) {
        return (rc);
    }

    /* ...delete cfc entry */
    q_params.cmd = ECORE_Q_CMD_CFC_DEL;
    FUNC3(&q_params.params.cfc_del, 0, sizeof(q_params.params.cfc_del));
    q_params.params.cfc_del.cid_index = FIRST_TX_COS_INDEX;
    return (FUNC2(sc, &q_params));
}