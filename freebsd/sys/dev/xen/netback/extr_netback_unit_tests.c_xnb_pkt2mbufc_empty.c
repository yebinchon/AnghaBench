
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct xnb_pkt {scalar_t__ size; scalar_t__ list_len; } ;
struct mbuf {int dummy; } ;
struct TYPE_4__ {int req_cons; } ;
struct TYPE_3__ {int ifp; TYPE_2__ txb; } ;


 int safe_m_freem (struct mbuf**) ;
 struct mbuf* xnb_pkt2mbufc (struct xnb_pkt*,int ) ;
 int xnb_ring2pkt (struct xnb_pkt*,TYPE_2__*,int ) ;
 TYPE_1__ xnb_unit_pvt ;

__attribute__((used)) static void
xnb_pkt2mbufc_empty(char *buffer, size_t buflen)
{
 int num_consumed;
 struct xnb_pkt pkt;
 struct mbuf *pMbuf;
 pkt.list_len = 0;


 num_consumed = xnb_ring2pkt(&pkt, &xnb_unit_pvt.txb,
                             xnb_unit_pvt.txb.req_cons);
 pkt.size = 0;
 pMbuf = xnb_pkt2mbufc(&pkt, xnb_unit_pvt.ifp);
 safe_m_freem(&pMbuf);
}
