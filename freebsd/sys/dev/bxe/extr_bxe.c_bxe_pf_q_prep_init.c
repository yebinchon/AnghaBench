
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef size_t uint8_t ;
struct TYPE_6__ {int hc_rate; int sb_cq_index; int fw_sb_id; int flags; } ;
struct TYPE_5__ {int hc_rate; int sb_cq_index; int fw_sb_id; int flags; } ;
struct ecore_queue_init_params {size_t max_cos; int ** cxts; TYPE_2__ tx; TYPE_1__ rx; } ;
struct bxe_softc {int hc_rx_ticks; int hc_tx_ticks; size_t max_cos; TYPE_4__* context; } ;
struct bxe_fastpath {int index; int fw_sb_id; } ;
struct TYPE_8__ {TYPE_3__* vcxt; } ;
struct TYPE_7__ {int eth; } ;


 int BLOGD (struct bxe_softc*,int ,char*,int,size_t) ;
 int DBG_LOAD ;
 int ECORE_Q_FLG_HC ;
 int ECORE_Q_FLG_HC_EN ;
 size_t FIRST_TX_COS_INDEX ;
 int HC_INDEX_ETH_FIRST_TX_CQ_CONS ;
 int HC_INDEX_ETH_RX_CQ_CONS ;
 int ILT_PAGE_CIDS ;
 int bxe_set_bit (int ,int *) ;

__attribute__((used)) static void
bxe_pf_q_prep_init(struct bxe_softc *sc,
                   struct bxe_fastpath *fp,
                   struct ecore_queue_init_params *init_params)
{
    uint8_t cos;
    int cxt_index, cxt_offset;

    bxe_set_bit(ECORE_Q_FLG_HC, &init_params->rx.flags);
    bxe_set_bit(ECORE_Q_FLG_HC, &init_params->tx.flags);

    bxe_set_bit(ECORE_Q_FLG_HC_EN, &init_params->rx.flags);
    bxe_set_bit(ECORE_Q_FLG_HC_EN, &init_params->tx.flags);


    init_params->rx.hc_rate =
        sc->hc_rx_ticks ? (1000000 / sc->hc_rx_ticks) : 0;
    init_params->tx.hc_rate =
        sc->hc_tx_ticks ? (1000000 / sc->hc_tx_ticks) : 0;


    init_params->rx.fw_sb_id = init_params->tx.fw_sb_id = fp->fw_sb_id;


    init_params->rx.sb_cq_index = HC_INDEX_ETH_RX_CQ_CONS;
    init_params->tx.sb_cq_index = HC_INDEX_ETH_FIRST_TX_CQ_CONS;


    init_params->max_cos = sc->max_cos;

    BLOGD(sc, DBG_LOAD, "fp %d setting queue params max cos to %d\n",
          fp->index, init_params->max_cos);


    for (cos = FIRST_TX_COS_INDEX; cos < init_params->max_cos; cos++) {


        cxt_index = fp->index / ILT_PAGE_CIDS;
        cxt_offset = fp->index - (cxt_index * ILT_PAGE_CIDS);
        init_params->cxts[cos] = &sc->context[cxt_index].vcxt[cxt_offset].eth;
    }
}
