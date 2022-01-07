
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u64 ;
typedef int u32 ;
struct tx_ring {int tx_paddr; int me; int tx_cidx_processed; int * tx_rsq; int tx_rs_pidx; int tx_rs_cidx; int tail; } ;
struct ixgbe_legacy_tx_desc {int dummy; } ;
struct ixgbe_hw {int dummy; } ;
struct ix_tx_queue {struct tx_ring txr; } ;
struct adapter {int num_tx_queues; struct ixgbe_hw hw; struct ix_tx_queue* tx_queues; TYPE_1__* shared; } ;
typedef TYPE_1__* if_softc_ctx_t ;
typedef int if_ctx_t ;
struct TYPE_2__ {int* isc_ntxd; } ;


 int IXGBE_DCA_TXCTRL_DESC_WRO_EN ;
 int IXGBE_READ_REG (struct ixgbe_hw*,int ) ;
 int IXGBE_TXDCTL_ENABLE ;
 int IXGBE_VFDCA_TXCTRL (int) ;
 int IXGBE_VFTDBAH (int) ;
 int IXGBE_VFTDBAL (int) ;
 int IXGBE_VFTDH (int) ;
 int IXGBE_VFTDLEN (int) ;
 int IXGBE_VFTDT (int) ;
 int IXGBE_VFTXDCTL (int) ;
 int IXGBE_WRITE_REG (struct ixgbe_hw*,int ,int) ;
 int QIDX_INVALID ;
 struct adapter* iflib_get_softc (int ) ;

__attribute__((used)) static void
ixv_initialize_transmit_units(if_ctx_t ctx)
{
 struct adapter *adapter = iflib_get_softc(ctx);
 struct ixgbe_hw *hw = &adapter->hw;
 if_softc_ctx_t scctx = adapter->shared;
 struct ix_tx_queue *que = adapter->tx_queues;
 int i;

 for (i = 0; i < adapter->num_tx_queues; i++, que++) {
  struct tx_ring *txr = &que->txr;
  u64 tdba = txr->tx_paddr;
  u32 txctrl, txdctl;
  int j = txr->me;


  txdctl = IXGBE_READ_REG(hw, IXGBE_VFTXDCTL(j));
  txdctl |= (8 << 16);
  IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(j), txdctl);


  IXGBE_WRITE_REG(&adapter->hw, IXGBE_VFTDH(j), 0);
  IXGBE_WRITE_REG(&adapter->hw, IXGBE_VFTDT(j), 0);


  txr->tail = IXGBE_VFTDT(j);

  txr->tx_rs_cidx = txr->tx_rs_pidx;





  txr->tx_cidx_processed = scctx->isc_ntxd[0] - 1;
  for (int k = 0; k < scctx->isc_ntxd[0]; k++)
   txr->tx_rsq[k] = QIDX_INVALID;


  IXGBE_WRITE_REG(hw, IXGBE_VFTDBAL(j),
      (tdba & 0x00000000ffffffffULL));
  IXGBE_WRITE_REG(hw, IXGBE_VFTDBAH(j), (tdba >> 32));
  IXGBE_WRITE_REG(hw, IXGBE_VFTDLEN(j),
      scctx->isc_ntxd[0] * sizeof(struct ixgbe_legacy_tx_desc));
  txctrl = IXGBE_READ_REG(hw, IXGBE_VFDCA_TXCTRL(j));
  txctrl &= ~IXGBE_DCA_TXCTRL_DESC_WRO_EN;
  IXGBE_WRITE_REG(hw, IXGBE_VFDCA_TXCTRL(j), txctrl);


  txdctl = IXGBE_READ_REG(hw, IXGBE_VFTXDCTL(j));
  txdctl |= IXGBE_TXDCTL_ENABLE;
  IXGBE_WRITE_REG(hw, IXGBE_VFTXDCTL(j), txdctl);
 }

 return;
}
