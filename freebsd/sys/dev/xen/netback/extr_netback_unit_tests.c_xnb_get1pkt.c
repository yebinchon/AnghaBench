
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint16_t ;
struct xnb_pkt {int dummy; } ;
struct netif_tx_request {size_t size; int flags; } ;
struct TYPE_7__ {int req_prod_pvt; } ;
struct TYPE_6__ {int req_cons; } ;
struct TYPE_5__ {TYPE_2__ txb; TYPE_3__ txf; } ;


 struct netif_tx_request* RING_GET_REQUEST (TYPE_3__*,int ) ;
 int RING_PUSH_REQUESTS (TYPE_3__*) ;
 int xnb_ring2pkt (struct xnb_pkt*,TYPE_2__*,int ) ;
 TYPE_1__ xnb_unit_pvt ;

__attribute__((used)) static int
xnb_get1pkt(struct xnb_pkt *pkt, size_t size, uint16_t flags)
{
 struct netif_tx_request *req;

 req = RING_GET_REQUEST(&xnb_unit_pvt.txf,
     xnb_unit_pvt.txf.req_prod_pvt);
 req->flags = flags;
 req->size = size;
 xnb_unit_pvt.txf.req_prod_pvt++;

 RING_PUSH_REQUESTS(&xnb_unit_pvt.txf);

 return xnb_ring2pkt(pkt, &xnb_unit_pvt.txb,
                             xnb_unit_pvt.txb.req_cons);
}
