
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hn_txdesc {scalar_t__ chim_index; scalar_t__ chim_size; int send_ctx; } ;
struct hn_tx_ring {int hn_chan; } ;
struct hn_nvs_rndis {scalar_t__ nvs_chim_idx; scalar_t__ nvs_chim_sz; int nvs_rndis_mtype; int nvs_type; } ;
typedef int rndis ;


 scalar_t__ HN_NVS_CHIM_IDX_INVALID ;
 int HN_NVS_RNDIS_MTYPE_DATA ;
 int HN_NVS_TYPE_RNDIS ;
 int KASSERT (int,char*) ;
 int VMBUS_CHANPKT_FLAG_RC ;
 int hn_nvs_send (int ,int ,struct hn_nvs_rndis*,int,int *) ;

__attribute__((used)) static int
hn_txpkt_chim(struct hn_tx_ring *txr, struct hn_txdesc *txd)
{
 struct hn_nvs_rndis rndis;

 KASSERT(txd->chim_index != HN_NVS_CHIM_IDX_INVALID &&
     txd->chim_size > 0, ("invalid rndis chim txd"));

 rndis.nvs_type = HN_NVS_TYPE_RNDIS;
 rndis.nvs_rndis_mtype = HN_NVS_RNDIS_MTYPE_DATA;
 rndis.nvs_chim_idx = txd->chim_index;
 rndis.nvs_chim_sz = txd->chim_size;

 return (hn_nvs_send(txr->hn_chan, VMBUS_CHANPKT_FLAG_RC,
     &rndis, sizeof(rndis), &txd->send_ctx));
}
