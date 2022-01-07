
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_5__ ;
typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int hi; int lo; } ;
struct TYPE_11__ {TYPE_3__ tx_bd_page_base; } ;
struct tx_queue_init_ramrod_data {TYPE_5__ tx; int general; } ;
struct TYPE_7__ {int flags; int txq_params; int gen_params; } ;
struct TYPE_8__ {TYPE_1__ tx_only; } ;
struct ecore_queue_state_params {TYPE_4__* q_obj; TYPE_2__ params; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_10__ {int * cids; } ;


 int ECORE_MSG (struct bxe_softc*,char*,int ,int ,int ) ;
 int ecore_q_fill_init_general_data (struct bxe_softc*,TYPE_4__*,int *,int *,int *) ;
 int ecore_q_fill_init_tx_data (TYPE_4__*,int *,TYPE_5__*,int *) ;

__attribute__((used)) static void ecore_q_fill_setup_tx_only(struct bxe_softc *sc,
    struct ecore_queue_state_params *cmd_params,
    struct tx_queue_init_ramrod_data *data)
{
 ecore_q_fill_init_general_data(sc, cmd_params->q_obj,
           &cmd_params->params.tx_only.gen_params,
           &data->general,
           &cmd_params->params.tx_only.flags);

 ecore_q_fill_init_tx_data(cmd_params->q_obj,
      &cmd_params->params.tx_only.txq_params,
      &data->tx,
      &cmd_params->params.tx_only.flags);

 ECORE_MSG(sc, "cid %d, tx bd page lo %x hi %x",
    cmd_params->q_obj->cids[0],
    data->tx.tx_bd_page_base.lo,
    data->tx.tx_bd_page_base.hi);
}
