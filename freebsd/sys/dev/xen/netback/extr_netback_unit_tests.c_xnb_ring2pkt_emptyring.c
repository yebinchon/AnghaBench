
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xnb_pkt {int dummy; } ;
struct TYPE_4__ {int req_cons; } ;
struct TYPE_3__ {TYPE_2__ txb; } ;


 int XNB_ASSERT (int) ;
 int xnb_ring2pkt (struct xnb_pkt*,TYPE_2__*,int ) ;
 TYPE_1__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_ring2pkt_emptyring(char *buffer, size_t buflen)
{
 struct xnb_pkt pkt;
 int num_consumed;

 num_consumed = xnb_ring2pkt(&pkt, &xnb_unit_pvt.txb,
                             xnb_unit_pvt.txb.req_cons);
 XNB_ASSERT(num_consumed == 0);
}
