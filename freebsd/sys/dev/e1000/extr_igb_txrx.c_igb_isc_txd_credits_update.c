
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int status; } ;
union e1000_adv_tx_desc {TYPE_1__ wb; } ;
typedef int uint8_t ;
typedef size_t uint16_t ;
struct tx_ring {size_t tx_rs_cidx; size_t tx_rs_pidx; size_t* tx_rsq; size_t tx_cidx_processed; int * tx_base; } ;
struct em_tx_queue {struct tx_ring txr; } ;
struct adapter {struct em_tx_queue* tx_queues; TYPE_2__* shared; } ;
typedef size_t qidx_t ;
typedef scalar_t__ int32_t ;
typedef TYPE_2__* if_softc_ctx_t ;
struct TYPE_4__ {size_t* isc_ntxd; } ;


 int E1000_TXD_STAT_DD ;
 int MPASS (int) ;

__attribute__((used)) static int
igb_isc_txd_credits_update(void *arg, uint16_t txqid, bool clear)
{
 struct adapter *adapter = arg;
 if_softc_ctx_t scctx = adapter->shared;
 struct em_tx_queue *que = &adapter->tx_queues[txqid];
 struct tx_ring *txr = &que->txr;

 qidx_t processed = 0;
 int updated;
 qidx_t cur, prev, ntxd, rs_cidx;
 int32_t delta;
 uint8_t status;

 rs_cidx = txr->tx_rs_cidx;
 if (rs_cidx == txr->tx_rs_pidx)
  return (0);
 cur = txr->tx_rsq[rs_cidx];
 status = ((union e1000_adv_tx_desc *)&txr->tx_base[cur])->wb.status;
 updated = !!(status & E1000_TXD_STAT_DD);

 if (!updated)
  return (0);



 if (!clear)
  return (1);

 prev = txr->tx_cidx_processed;
 ntxd = scctx->isc_ntxd[0];
 do {
  MPASS(prev != cur);
  delta = (int32_t)cur - (int32_t)prev;
  if (delta < 0)
   delta += ntxd;
  MPASS(delta > 0);

  processed += delta;
  prev = cur;
  rs_cidx = (rs_cidx + 1) & (ntxd-1);
  if (rs_cidx == txr->tx_rs_pidx)
   break;
  cur = txr->tx_rsq[rs_cidx];
  status = ((union e1000_adv_tx_desc *)&txr->tx_base[cur])->wb.status;
 } while ((status & E1000_TXD_STAT_DD));

 txr->tx_rs_cidx = rs_cidx;
 txr->tx_cidx_processed = prev;
 return (processed);
}
