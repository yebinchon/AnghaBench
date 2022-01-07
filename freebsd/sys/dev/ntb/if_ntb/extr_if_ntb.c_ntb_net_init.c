
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ntb_net_ctx {TYPE_1__* queues; int ifp; } ;
typedef int if_t ;
struct TYPE_2__ {int qp; } ;


 int IFF_DRV_OACTIVE ;
 int IFF_DRV_RUNNING ;
 int LINK_STATE_DOWN ;
 int LINK_STATE_UP ;
 int if_link_state_change (int ,int ) ;
 int if_setbaudrate (int ,int ) ;
 int if_setdrvflagbits (int ,int ,int ) ;
 scalar_t__ ntb_transport_link_query (int ) ;
 int ntb_transport_link_speed (int ) ;

__attribute__((used)) static void
ntb_net_init(void *arg)
{
 struct ntb_net_ctx *sc = arg;
 if_t ifp = sc->ifp;

 if_setdrvflagbits(ifp, IFF_DRV_RUNNING, IFF_DRV_OACTIVE);
 if_setbaudrate(ifp, ntb_transport_link_speed(sc->queues[0].qp));
 if_link_state_change(ifp, ntb_transport_link_query(sc->queues[0].qp) ?
     LINK_STATE_UP : LINK_STATE_DOWN);
}
