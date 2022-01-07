
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int status_error; } ;
struct TYPE_5__ {TYPE_1__ upper; } ;
union e1000_adv_rx_desc {TYPE_2__ wb; } ;
typedef size_t uint16_t ;
typedef int u32 ;
struct rx_ring {int * rx_base; } ;
struct em_rx_queue {struct rx_ring rxr; } ;
struct adapter {struct em_rx_queue* rx_queues; TYPE_3__* shared; } ;
typedef int qidx_t ;
typedef TYPE_3__* if_softc_ctx_t ;
struct TYPE_6__ {int* isc_nrxd; } ;


 int E1000_RXD_STAT_DD ;
 int E1000_RXD_STAT_EOP ;
 int le32toh (int ) ;

__attribute__((used)) static int
igb_isc_rxd_available(void *arg, uint16_t rxqid, qidx_t idx, qidx_t budget)
{
 struct adapter *sc = arg;
 if_softc_ctx_t scctx = sc->shared;
 struct em_rx_queue *que = &sc->rx_queues[rxqid];
 struct rx_ring *rxr = &que->rxr;
 union e1000_adv_rx_desc *rxd;
 u32 staterr = 0;
 int cnt, i;

 for (cnt = 0, i = idx; cnt < scctx->isc_nrxd[0] && cnt <= budget;) {
  rxd = (union e1000_adv_rx_desc *)&rxr->rx_base[i];
  staterr = le32toh(rxd->wb.upper.status_error);

  if ((staterr & E1000_RXD_STAT_DD) == 0)
   break;
  if (++i == scctx->isc_nrxd[0])
   i = 0;
  if (staterr & E1000_RXD_STAT_EOP)
   cnt++;
 }
 return (cnt);
}
