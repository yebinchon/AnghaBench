
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 scalar_t__ IS_DEFAULT_VNET (int ) ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int ND6_SLOWTIMER_INTERVAL ;
 int V_nd6_lock ;
 int V_nd6_onlink_mtx ;
 int V_nd6_slowtimo_ch ;
 int V_nd6_timer_ch ;
 int V_nd_prefix ;
 int callout_init (int *,int ) ;
 int callout_reset (int *,int,int ,int ) ;
 int curvnet ;
 int hz ;
 int iflladdr_event ;
 void* iflladdr_event_eh ;
 int ifnet_link_event ;
 void* ifnet_link_event_eh ;
 int lle_event ;
 void* lle_event_eh ;
 int mtx_init (int *,char*,int *,int ) ;
 int nd6_dad_init () ;
 int nd6_defrouter_init () ;
 int nd6_iflladdr ;
 int nd6_ifnet_link_event ;
 int nd6_lle_event ;
 int nd6_slowtimo ;
 int nd6_timer ;
 int rw_init (int *,char*) ;

void
nd6_init(void)
{

 mtx_init(&V_nd6_onlink_mtx, "nd6 onlink", ((void*)0), MTX_DEF);
 rw_init(&V_nd6_lock, "nd6 list");

 LIST_INIT(&V_nd_prefix);
 nd6_defrouter_init();


 callout_init(&V_nd6_slowtimo_ch, 0);
 callout_reset(&V_nd6_slowtimo_ch, ND6_SLOWTIMER_INTERVAL * hz,
     nd6_slowtimo, curvnet);

 callout_init(&V_nd6_timer_ch, 0);
 callout_reset(&V_nd6_timer_ch, hz, nd6_timer, curvnet);

 nd6_dad_init();
 if (IS_DEFAULT_VNET(curvnet)) {
  lle_event_eh = EVENTHANDLER_REGISTER(lle_event, nd6_lle_event,
      ((void*)0), EVENTHANDLER_PRI_ANY);
  iflladdr_event_eh = EVENTHANDLER_REGISTER(iflladdr_event,
      nd6_iflladdr, ((void*)0), EVENTHANDLER_PRI_ANY);
  ifnet_link_event_eh = EVENTHANDLER_REGISTER(ifnet_link_event,
      nd6_ifnet_link_event, ((void*)0), EVENTHANDLER_PRI_ANY);
 }
}
