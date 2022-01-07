
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint8_t ;
struct rndis_packet_msg {int rm_len; } ;
struct ifnet {int dummy; } ;
struct hn_txdesc {int chim_index; int chim_size; } ;
struct hn_tx_ring {int hn_agg_pktleft; int hn_agg_szleft; int hn_agg_pktmax; int hn_agg_szmax; struct rndis_packet_msg* hn_agg_prevpkt; struct hn_txdesc* hn_agg_txd; int hn_agg_align; TYPE_1__* hn_sc; int hn_tx_chimney; int hn_tx_chimney_tried; } ;
struct TYPE_2__ {int hn_chim_szmax; void* hn_chim; } ;


 int HN_NVS_CHIM_IDX_INVALID ;
 int HN_PKTSIZE_MIN (int ) ;
 int KASSERT (int ,char*) ;
 int hn_chim_alloc (TYPE_1__*) ;
 int hn_flush_txagg (struct ifnet*,struct hn_tx_ring*) ;
 int hn_txdesc_agg (struct hn_txdesc*,struct hn_txdesc*) ;
 int roundup2 (int,int ) ;

__attribute__((used)) static void *
hn_try_txagg(struct ifnet *ifp, struct hn_tx_ring *txr, struct hn_txdesc *txd,
    int pktsize)
{
 void *chim;

 if (txr->hn_agg_txd != ((void*)0)) {
  if (txr->hn_agg_pktleft >= 1 && txr->hn_agg_szleft > pktsize) {
   struct hn_txdesc *agg_txd = txr->hn_agg_txd;
   struct rndis_packet_msg *pkt = txr->hn_agg_prevpkt;
   int olen;
   olen = pkt->rm_len;
   pkt->rm_len = roundup2(olen, txr->hn_agg_align);
   agg_txd->chim_size += pkt->rm_len - olen;


   hn_txdesc_agg(agg_txd, txd);

   chim = (uint8_t *)pkt + pkt->rm_len;

   txr->hn_agg_prevpkt = chim;

   txr->hn_agg_pktleft--;
   txr->hn_agg_szleft -= pktsize;
   if (txr->hn_agg_szleft <=
       HN_PKTSIZE_MIN(txr->hn_agg_align)) {




    txr->hn_agg_pktleft = 0;
   }

   return (chim);
  }
  hn_flush_txagg(ifp, txr);
 }
 KASSERT(txr->hn_agg_txd == ((void*)0), ("lingering aggregating txdesc"));

 txr->hn_tx_chimney_tried++;
 txd->chim_index = hn_chim_alloc(txr->hn_sc);
 if (txd->chim_index == HN_NVS_CHIM_IDX_INVALID)
  return (((void*)0));
 txr->hn_tx_chimney++;

 chim = txr->hn_sc->hn_chim +
     (txd->chim_index * txr->hn_sc->hn_chim_szmax);

 if (txr->hn_agg_pktmax > 1 &&
     txr->hn_agg_szmax > pktsize + HN_PKTSIZE_MIN(txr->hn_agg_align)) {
  txr->hn_agg_txd = txd;
  txr->hn_agg_pktleft = txr->hn_agg_pktmax - 1;
  txr->hn_agg_szleft = txr->hn_agg_szmax - pktsize;
  txr->hn_agg_prevpkt = chim;
 }
 return (chim);
}
