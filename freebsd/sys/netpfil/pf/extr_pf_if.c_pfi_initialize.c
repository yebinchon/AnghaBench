
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 void* EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int group_attach_event ;
 int group_change_event ;
 int group_detach_event ;
 int ifaddr_event ;
 int ifnet_arrival_event ;
 int ifnet_departure_event ;
 void* pfi_attach_cookie ;
 void* pfi_attach_group_cookie ;
 int pfi_attach_group_event ;
 int pfi_attach_ifnet_event ;
 void* pfi_change_group_cookie ;
 int pfi_change_group_event ;
 void* pfi_detach_cookie ;
 void* pfi_detach_group_cookie ;
 int pfi_detach_group_event ;
 int pfi_detach_ifnet_event ;
 int pfi_ifaddr_event ;
 void* pfi_ifaddr_event_cookie ;

void
pfi_initialize(void)
{

 pfi_attach_cookie = EVENTHANDLER_REGISTER(ifnet_arrival_event,
     pfi_attach_ifnet_event, ((void*)0), EVENTHANDLER_PRI_ANY);
 pfi_detach_cookie = EVENTHANDLER_REGISTER(ifnet_departure_event,
     pfi_detach_ifnet_event, ((void*)0), EVENTHANDLER_PRI_ANY);
 pfi_attach_group_cookie = EVENTHANDLER_REGISTER(group_attach_event,
     pfi_attach_group_event, ((void*)0), EVENTHANDLER_PRI_ANY);
 pfi_change_group_cookie = EVENTHANDLER_REGISTER(group_change_event,
     pfi_change_group_event, ((void*)0), EVENTHANDLER_PRI_ANY);
 pfi_detach_group_cookie = EVENTHANDLER_REGISTER(group_detach_event,
     pfi_detach_group_event, ((void*)0), EVENTHANDLER_PRI_ANY);
 pfi_ifaddr_event_cookie = EVENTHANDLER_REGISTER(ifaddr_event,
     pfi_ifaddr_event, ((void*)0), EVENTHANDLER_PRI_ANY);
}
