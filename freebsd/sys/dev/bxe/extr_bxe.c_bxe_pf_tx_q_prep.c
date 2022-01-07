
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
struct ecore_txq_setup_params {int tss_leading_cl_id; int fw_sb_id; int traffic_type; scalar_t__ sb_cq_index; int dscr_map; } ;
struct bxe_softc {int dummy; } ;
struct TYPE_2__ {int paddr; } ;
struct bxe_fastpath {int fw_sb_id; TYPE_1__ tx_dma; } ;


 int BXE_FP (struct bxe_softc*,int ,int ) ;
 scalar_t__ HC_INDEX_ETH_FIRST_TX_CQ_CONS ;
 int LLFC_TRAFFIC_TYPE_NW ;
 int cl_id ;

__attribute__((used)) static void
bxe_pf_tx_q_prep(struct bxe_softc *sc,
                 struct bxe_fastpath *fp,
                 struct ecore_txq_setup_params *txq_init,
                 uint8_t cos)
{





    txq_init->dscr_map = fp->tx_dma.paddr;
    txq_init->sb_cq_index = HC_INDEX_ETH_FIRST_TX_CQ_CONS + cos;
    txq_init->traffic_type = LLFC_TRAFFIC_TYPE_NW;
    txq_init->fw_sb_id = fp->fw_sb_id;





    txq_init->tss_leading_cl_id = BXE_FP(sc, 0, cl_id);
}
