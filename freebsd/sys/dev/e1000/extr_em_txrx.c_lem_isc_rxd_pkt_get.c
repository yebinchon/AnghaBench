
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int u32 ;
typedef void* u16 ;
struct rx_ring {int * rx_base; } ;
struct em_rx_queue {struct rx_ring rxr; } ;
struct e1000_rx_desc {int status; int errors; int special; int length; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_10__ {TYPE_2__ mac; } ;
struct adapter {TYPE_3__ hw; int dropped_pkts; struct em_rx_queue* rx_queues; TYPE_4__* shared; } ;
typedef TYPE_4__* if_softc_ctx_t ;
typedef TYPE_5__* if_rxd_info_t ;
struct TYPE_12__ {size_t iri_qsidx; int iri_cidx; int iri_nfrags; int iri_flags; void* iri_vtag; TYPE_1__* iri_frags; int iri_len; } ;
struct TYPE_11__ {int* isc_nrxd; } ;
struct TYPE_8__ {int irf_idx; void* irf_len; scalar_t__ irf_flid; } ;


 int E1000_RXD_ERR_FRAME_ERR_MASK ;
 int E1000_RXD_STAT_DD ;
 int E1000_RXD_STAT_EOP ;
 int E1000_RXD_STAT_IXSM ;
 int E1000_RXD_STAT_VP ;
 int EBADMSG ;
 int MPASS (int) ;
 int M_VLANTAG ;
 scalar_t__ e1000_82543 ;
 void* le16toh (int ) ;
 int lem_receive_checksum (int,int,TYPE_5__*) ;

__attribute__((used)) static int
lem_isc_rxd_pkt_get(void *arg, if_rxd_info_t ri)
{
 struct adapter *adapter = arg;
 if_softc_ctx_t scctx = adapter->shared;
 struct em_rx_queue *que = &adapter->rx_queues[ri->iri_qsidx];
 struct rx_ring *rxr = &que->rxr;
 struct e1000_rx_desc *rxd;
 u16 len;
 u32 status, errors;
 bool eop;
 int i, cidx;

 status = errors = i = 0;
 cidx = ri->iri_cidx;

 do {
  rxd = (struct e1000_rx_desc *)&rxr->rx_base[cidx];
  status = rxd->status;
  errors = rxd->errors;


  MPASS ((status & E1000_RXD_STAT_DD) != 0);

  len = le16toh(rxd->length);
  ri->iri_len += len;

  eop = (status & E1000_RXD_STAT_EOP) != 0;


  if (errors & E1000_RXD_ERR_FRAME_ERR_MASK) {
   adapter->dropped_pkts++;

   return (EBADMSG);
  }

  ri->iri_frags[i].irf_flid = 0;
  ri->iri_frags[i].irf_idx = cidx;
  ri->iri_frags[i].irf_len = len;

  rxd->status = 0;

  if (++cidx == scctx->isc_nrxd[0])
   cidx = 0;
  i++;
 } while (!eop);


 if (adapter->hw.mac.type >= e1000_82543 && !(status & E1000_RXD_STAT_IXSM))
  lem_receive_checksum(status, errors, ri);

 if (status & E1000_RXD_STAT_VP) {
  ri->iri_vtag = le16toh(rxd->special);
  ri->iri_flags |= M_VLANTAG;
 }

 ri->iri_nfrags = i;

 return (0);
}
