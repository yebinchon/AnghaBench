
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int LIST_EMPTY (int *) ;
 int MPASS (int ) ;
 int if_clone_detach (int ) ;
 int ifnet_departure_event ;
 int mtx_destroy (int *) ;
 int vxlan_cloner ;
 int vxlan_ifdetach_event_tag ;
 int vxlan_list_mtx ;
 int vxlan_socket_list ;

__attribute__((used)) static void
vxlan_unload(void)
{

 EVENTHANDLER_DEREGISTER(ifnet_departure_event,
     vxlan_ifdetach_event_tag);
 if_clone_detach(vxlan_cloner);
 mtx_destroy(&vxlan_list_mtx);
 MPASS(LIST_EMPTY(&vxlan_socket_list));
}
