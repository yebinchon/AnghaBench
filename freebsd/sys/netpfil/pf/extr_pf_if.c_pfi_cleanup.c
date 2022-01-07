
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int group_attach_event ;
 int group_change_event ;
 int group_detach_event ;
 int ifaddr_event ;
 int ifnet_arrival_event ;
 int ifnet_departure_event ;
 int pfi_attach_cookie ;
 int pfi_attach_group_cookie ;
 int pfi_change_group_cookie ;
 int pfi_detach_cookie ;
 int pfi_detach_group_cookie ;
 int pfi_ifaddr_event_cookie ;

void
pfi_cleanup(void)
{

 EVENTHANDLER_DEREGISTER(ifnet_arrival_event, pfi_attach_cookie);
 EVENTHANDLER_DEREGISTER(ifnet_departure_event, pfi_detach_cookie);
 EVENTHANDLER_DEREGISTER(group_attach_event, pfi_attach_group_cookie);
 EVENTHANDLER_DEREGISTER(group_change_event, pfi_change_group_cookie);
 EVENTHANDLER_DEREGISTER(group_detach_event, pfi_detach_group_cookie);
 EVENTHANDLER_DEREGISTER(ifaddr_event, pfi_ifaddr_event_cookie);
}
