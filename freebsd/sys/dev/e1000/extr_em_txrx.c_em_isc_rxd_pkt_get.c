
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_9__ ;
typedef struct TYPE_19__ TYPE_8__ ;
typedef struct TYPE_18__ TYPE_7__ ;
typedef struct TYPE_17__ TYPE_6__ ;
typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_16__ {int rss; } ;
struct TYPE_17__ {TYPE_5__ hi_dword; int mrq; } ;
struct TYPE_15__ {int vlan; int status_error; int length; } ;
struct TYPE_18__ {TYPE_6__ lower; TYPE_4__ upper; } ;
union e1000_rx_desc_extended {TYPE_7__ wb; } ;
typedef int u32 ;
typedef void* u16 ;
struct rx_ring {union e1000_rx_desc_extended* rx_base; } ;
struct em_rx_queue {struct rx_ring rxr; } ;
struct TYPE_13__ {scalar_t__ type; } ;
struct TYPE_14__ {TYPE_2__ mac; } ;
struct adapter {TYPE_3__ hw; int dropped_pkts; struct em_rx_queue* rx_queues; TYPE_8__* shared; } ;
typedef TYPE_8__* if_softc_ctx_t ;
typedef TYPE_9__* if_rxd_info_t ;
struct TYPE_20__ {size_t iri_qsidx; int iri_cidx; int iri_vtag; int iri_nfrags; int iri_rsstype; void* iri_flowid; int iri_flags; TYPE_1__* iri_frags; int iri_len; } ;
struct TYPE_19__ {int* isc_nrxd; } ;
struct TYPE_12__ {int irf_idx; void* irf_len; scalar_t__ irf_flid; } ;


 int E1000_RXDEXT_ERR_FRAME_ERR_MASK ;
 int E1000_RXD_STAT_DD ;
 int E1000_RXD_STAT_EOP ;
 int E1000_RXD_STAT_VP ;
 int EBADMSG ;
 int MPASS (int) ;
 int M_VLANTAG ;
 scalar_t__ e1000_82543 ;
 int em_determine_rsstype (int) ;
 int em_receive_checksum (int,TYPE_9__*) ;
 int htole32 (int) ;
 void* le16toh (int ) ;
 void* le32toh (int ) ;

__attribute__((used)) static int
em_isc_rxd_pkt_get(void *arg, if_rxd_info_t ri)
{
 struct adapter *adapter = arg;
 if_softc_ctx_t scctx = adapter->shared;
 struct em_rx_queue *que = &adapter->rx_queues[ri->iri_qsidx];
 struct rx_ring *rxr = &que->rxr;
 union e1000_rx_desc_extended *rxd;

 u16 len;
 u32 pkt_info;
 u32 staterr = 0;
 bool eop;
 int i, cidx, vtag;

 i = vtag = 0;
 cidx = ri->iri_cidx;

 do {
  rxd = &rxr->rx_base[cidx];
  staterr = le32toh(rxd->wb.upper.status_error);
  pkt_info = le32toh(rxd->wb.lower.mrq);


  MPASS ((staterr & E1000_RXD_STAT_DD) != 0);

  len = le16toh(rxd->wb.upper.length);
  ri->iri_len += len;

  eop = (staterr & E1000_RXD_STAT_EOP) != 0;


  if (staterr & E1000_RXDEXT_ERR_FRAME_ERR_MASK) {
   adapter->dropped_pkts++;
   return EBADMSG;
  }

  ri->iri_frags[i].irf_flid = 0;
  ri->iri_frags[i].irf_idx = cidx;
  ri->iri_frags[i].irf_len = len;

  rxd->wb.upper.status_error &= htole32(~0xFF);

  if (++cidx == scctx->isc_nrxd[0])
   cidx = 0;
  i++;
 } while (!eop);


 if (adapter->hw.mac.type >= e1000_82543)
  em_receive_checksum(staterr, ri);

 if (staterr & E1000_RXD_STAT_VP) {
  vtag = le16toh(rxd->wb.upper.vlan);
 }

 ri->iri_vtag = vtag;
 if (vtag)
  ri->iri_flags |= M_VLANTAG;

 ri->iri_flowid = le32toh(rxd->wb.lower.hi_dword.rss);
 ri->iri_rsstype = em_determine_rsstype(pkt_info);

 ri->iri_nfrags = i;
 return (0);
}
