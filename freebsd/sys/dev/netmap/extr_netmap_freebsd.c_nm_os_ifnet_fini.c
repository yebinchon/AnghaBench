
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int ifnet_arrival_event ;
 int ifnet_departure_event ;
 int nm_ifnet_ah_tag ;
 int nm_ifnet_dh_tag ;

void
nm_os_ifnet_fini(void)
{
 EVENTHANDLER_DEREGISTER(ifnet_arrival_event,
   nm_ifnet_ah_tag);
 EVENTHANDLER_DEREGISTER(ifnet_departure_event,
   nm_ifnet_dh_tag);
}
