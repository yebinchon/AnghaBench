
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int ifnet_arrival_event ;
 int ifnet_departure_event ;
 int netmap_ifnet_arrival_handler ;
 int netmap_ifnet_departure_handler ;
 void* nm_ifnet_ah_tag ;
 void* nm_ifnet_dh_tag ;

int
nm_os_ifnet_init(void)
{
 nm_ifnet_ah_tag =
  EVENTHANDLER_REGISTER(ifnet_arrival_event,
    netmap_ifnet_arrival_handler,
    ((void*)0), EVENTHANDLER_PRI_ANY);
 nm_ifnet_dh_tag =
  EVENTHANDLER_REGISTER(ifnet_departure_event,
    netmap_ifnet_departure_handler,
    ((void*)0), EVENTHANDLER_PRI_ANY);
 return 0;
}
