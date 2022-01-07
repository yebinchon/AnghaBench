
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct xnb_pkt {int size; int car_size; scalar_t__ flags; int list_len; scalar_t__ car; } ;
struct netif_tx_request {int size; scalar_t__ flags; } ;
struct TYPE_7__ {int req_prod_pvt; } ;
struct TYPE_6__ {int req_cons; } ;
struct TYPE_5__ {TYPE_2__ txb; TYPE_3__ txf; } ;


 struct netif_tx_request* RING_GET_REQUEST (TYPE_3__*,int ) ;
 int RING_PUSH_REQUESTS (TYPE_3__*) ;
 int XNB_ASSERT (int) ;
 int xnb_pkt_is_valid (struct xnb_pkt*) ;
 int xnb_ring2pkt (struct xnb_pkt*,TYPE_2__*,int ) ;
 TYPE_1__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_ring2pkt_1req(char *buffer, size_t buflen)
{
 struct xnb_pkt pkt;
 int num_consumed;
 struct netif_tx_request *req;

 req = RING_GET_REQUEST(&xnb_unit_pvt.txf,
     xnb_unit_pvt.txf.req_prod_pvt);

 req->flags = 0;
 req->size = 69;
 xnb_unit_pvt.txf.req_prod_pvt++;

 RING_PUSH_REQUESTS(&xnb_unit_pvt.txf);

 num_consumed = xnb_ring2pkt(&pkt, &xnb_unit_pvt.txb,
                             xnb_unit_pvt.txb.req_cons);
 XNB_ASSERT(num_consumed == 1);
 XNB_ASSERT(pkt.size == 69);
 XNB_ASSERT(pkt.car_size == 69);
 XNB_ASSERT(pkt.flags == 0);
 XNB_ASSERT(xnb_pkt_is_valid(&pkt));
 XNB_ASSERT(pkt.list_len == 1);
 XNB_ASSERT(pkt.car == 0);
}
