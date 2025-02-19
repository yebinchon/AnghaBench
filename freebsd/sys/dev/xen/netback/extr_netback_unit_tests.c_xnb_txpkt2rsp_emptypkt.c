
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int txs_backup ;
typedef int txb_backup ;
struct xnb_pkt {scalar_t__ list_len; } ;
struct TYPE_8__ {int req_cons; } ;
typedef TYPE_1__ netif_tx_sring_t ;
typedef TYPE_1__ netif_tx_back_ring_t ;
struct TYPE_9__ {TYPE_1__* txs; TYPE_1__ txb; } ;


 int XNB_ASSERT (int) ;
 scalar_t__ memcmp (TYPE_1__*,TYPE_1__*,int) ;
 int xnb_ring2pkt (struct xnb_pkt*,TYPE_1__*,int ) ;
 int xnb_txpkt2rsp (struct xnb_pkt*,TYPE_1__*,int ) ;
 TYPE_3__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_txpkt2rsp_emptypkt(char *buffer, size_t buflen)
{
 int num_consumed;
 struct xnb_pkt pkt;
 netif_tx_back_ring_t txb_backup = xnb_unit_pvt.txb;
 netif_tx_sring_t txs_backup = *xnb_unit_pvt.txs;
 pkt.list_len = 0;


 num_consumed = xnb_ring2pkt(&pkt, &xnb_unit_pvt.txb,
                             xnb_unit_pvt.txb.req_cons);
 xnb_txpkt2rsp(&pkt, &xnb_unit_pvt.txb, 0);
 XNB_ASSERT(
     memcmp(&txb_backup, &xnb_unit_pvt.txb, sizeof(txb_backup)) == 0);
 XNB_ASSERT(
     memcmp(&txs_backup, xnb_unit_pvt.txs, sizeof(txs_backup)) == 0);
}
