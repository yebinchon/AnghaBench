
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int LIST_INIT (int *) ;
 int MTX_DEF ;
 int if_clone_simple (int ,int ,int ,int ) ;
 int ifnet_departure_event ;
 int mtx_init (int *,char*,int *,int ) ;
 int vxlan_clone_create ;
 int vxlan_clone_destroy ;
 int vxlan_cloner ;
 int vxlan_ifdetach_event ;
 int vxlan_ifdetach_event_tag ;
 int vxlan_list_mtx ;
 int vxlan_name ;
 int vxlan_socket_list ;

__attribute__((used)) static void
vxlan_load(void)
{

 mtx_init(&vxlan_list_mtx, "vxlan list", ((void*)0), MTX_DEF);
 LIST_INIT(&vxlan_socket_list);
 vxlan_ifdetach_event_tag = EVENTHANDLER_REGISTER(ifnet_departure_event,
     vxlan_ifdetach_event, ((void*)0), EVENTHANDLER_PRI_ANY);
 vxlan_cloner = if_clone_simple(vxlan_name, vxlan_clone_create,
     vxlan_clone_destroy, 0);
}
