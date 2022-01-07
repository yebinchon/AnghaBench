
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {int num_tx_rings; TYPE_1__* tx_cntxt; } ;
struct TYPE_9__ {TYPE_2__ hw; } ;
typedef TYPE_3__ qla_host_t ;
struct TYPE_10__ {int txr_comp; int txr_next; int txr_free; int tx_cntxt_id; int tx_prod_reg; int cons_p_addr; int base_p_addr; } ;
typedef TYPE_4__ qla_drvr_state_tx_t ;
struct TYPE_7__ {int txr_comp; int txr_next; int txr_free; int tx_cntxt_id; int tx_prod_reg; int tx_cons_paddr; int tx_ring_paddr; } ;



__attribute__((used)) static void
ql_get_tx_state(qla_host_t *ha, qla_drvr_state_tx_t *tx_state)
{
 int i;

 for (i = 0; i < ha->hw.num_tx_rings; i++) {
  tx_state->base_p_addr = ha->hw.tx_cntxt[i].tx_ring_paddr;
  tx_state->cons_p_addr = ha->hw.tx_cntxt[i].tx_cons_paddr;
  tx_state->tx_prod_reg = ha->hw.tx_cntxt[i].tx_prod_reg;
  tx_state->tx_cntxt_id = ha->hw.tx_cntxt[i].tx_cntxt_id;
  tx_state->txr_free = ha->hw.tx_cntxt[i].txr_free;
  tx_state->txr_next = ha->hw.tx_cntxt[i].txr_next;
  tx_state->txr_comp = ha->hw.tx_cntxt[i].txr_comp;
  tx_state++;
 }
 return;
}
