
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_txdesc {scalar_t__ chim_index; scalar_t__ chim_size; int send_ctx; } ;
struct hn_tx_ring {int hn_gpa_cnt; int hn_gpa; int hn_chan; } ;


 scalar_t__ HN_NVS_CHIM_IDX_INVALID ;
 int HN_NVS_RNDIS_MTYPE_DATA ;
 int KASSERT (int,char*) ;
 int hn_nvs_send_rndis_sglist (int ,int ,int *,int ,int ) ;

__attribute__((used)) static int
hn_txpkt_sglist(struct hn_tx_ring *txr, struct hn_txdesc *txd)
{

 KASSERT(txd->chim_index == HN_NVS_CHIM_IDX_INVALID &&
     txd->chim_size == 0, ("invalid rndis sglist txd"));
 return (hn_nvs_send_rndis_sglist(txr->hn_chan, HN_NVS_RNDIS_MTYPE_DATA,
     &txd->send_ctx, txr->hn_gpa, txr->hn_gpa_cnt));
}
