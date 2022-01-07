
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {void* cid_index; } ;
struct TYPE_5__ {TYPE_3__ cfc_del; TYPE_3__ terminate; } ;
struct ecore_queue_state_params {TYPE_2__ params; int cmd; int ramrod_flags; int * q_obj; int * member_0; } ;
struct bxe_softc {TYPE_1__* sp_objs; struct bxe_fastpath* fp; } ;
struct bxe_fastpath {size_t index; } ;
struct TYPE_4__ {int q_obj; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int,size_t) ;
 int DBG_LOAD ;
 int ECORE_Q_CMD_CFC_DEL ;
 int ECORE_Q_CMD_HALT ;
 int ECORE_Q_CMD_TERMINATE ;
 void* FIRST_TX_COS_INDEX ;
 int RAMROD_COMP_WAIT ;
 int bxe_set_bit (int ,int *) ;
 int ecore_queue_state_change (struct bxe_softc*,struct ecore_queue_state_params*) ;
 int memset (TYPE_3__*,int ,int) ;

__attribute__((used)) static int
bxe_stop_queue(struct bxe_softc *sc,
               int index)
{
    struct bxe_fastpath *fp = &sc->fp[index];
    struct ecore_queue_state_params q_params = { ((void*)0) };
    int rc;

    BLOGD(sc, DBG_LOAD, "stopping queue %d cid %d\n", index, fp->index);

    q_params.q_obj = &sc->sp_objs[fp->index].q_obj;

    bxe_set_bit(RAMROD_COMP_WAIT, &q_params.ramrod_flags);




    q_params.cmd = ECORE_Q_CMD_HALT;
    rc = ecore_queue_state_change(sc, &q_params);
    if (rc) {
        return (rc);
    }


    q_params.cmd = ECORE_Q_CMD_TERMINATE;
    memset(&q_params.params.terminate, 0, sizeof(q_params.params.terminate));
    q_params.params.terminate.cid_index = FIRST_TX_COS_INDEX;
    rc = ecore_queue_state_change(sc, &q_params);
    if (rc) {
        return (rc);
    }


    q_params.cmd = ECORE_Q_CMD_CFC_DEL;
    memset(&q_params.params.cfc_del, 0, sizeof(q_params.params.cfc_del));
    q_params.params.cfc_del.cid_index = FIRST_TX_COS_INDEX;
    return (ecore_queue_state_change(sc, &q_params));
}
