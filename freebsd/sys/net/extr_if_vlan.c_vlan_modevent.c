
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int ENOMEM ;
 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int *) ;
 int EVENTHANDLER_PRI_ANY ;
 int * EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;


 int VLAN_LOCKING_DESTROY () ;
 int VLAN_LOCKING_INIT () ;
 int bootverbose ;
 int if_clone_advanced (int ,int ,int ,int ,int ) ;
 int if_clone_detach (int ) ;
 int * ifdetach_tag ;
 int iflladdr_event ;
 int * iflladdr_tag ;
 int ifnet_departure_event ;
 int printf (char*) ;
 int vlan_clone_create ;
 int vlan_clone_destroy ;
 int vlan_clone_match ;
 int vlan_cloner ;
 int * vlan_cookie ;
 int * vlan_cookie_p ;
 int * vlan_devat ;
 int * vlan_devat_p ;
 int vlan_ifdetach ;
 int vlan_iflladdr ;
 int * vlan_input ;
 int * vlan_input_p ;
 int * vlan_link_state ;
 int * vlan_link_state_p ;
 int vlan_pcp ;
 int vlan_pcp_p ;
 int * vlan_setcookie ;
 int * vlan_setcookie_p ;
 int * vlan_tag ;
 int * vlan_tag_p ;
 int * vlan_trunk_cap_p ;
 int * vlan_trunk_capabilities ;
 int * vlan_trunkdev ;
 int * vlan_trunkdev_p ;
 int vlanname ;

__attribute__((used)) static int
vlan_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  ifdetach_tag = EVENTHANDLER_REGISTER(ifnet_departure_event,
      vlan_ifdetach, ((void*)0), EVENTHANDLER_PRI_ANY);
  if (ifdetach_tag == ((void*)0))
   return (ENOMEM);
  iflladdr_tag = EVENTHANDLER_REGISTER(iflladdr_event,
      vlan_iflladdr, ((void*)0), EVENTHANDLER_PRI_ANY);
  if (iflladdr_tag == ((void*)0))
   return (ENOMEM);
  VLAN_LOCKING_INIT();
  vlan_input_p = vlan_input;
  vlan_link_state_p = vlan_link_state;
  vlan_trunk_cap_p = vlan_trunk_capabilities;
  vlan_trunkdev_p = vlan_trunkdev;
  vlan_cookie_p = vlan_cookie;
  vlan_setcookie_p = vlan_setcookie;
  vlan_tag_p = vlan_tag;
  vlan_pcp_p = vlan_pcp;
  vlan_devat_p = vlan_devat;

  vlan_cloner = if_clone_advanced(vlanname, 0, vlan_clone_match,
      vlan_clone_create, vlan_clone_destroy);

  if (bootverbose)
   printf("vlan: initialized, using "



          "hash tables with chaining"


          "\n");
  break;
 case 128:

  if_clone_detach(vlan_cloner);

  EVENTHANDLER_DEREGISTER(ifnet_departure_event, ifdetach_tag);
  EVENTHANDLER_DEREGISTER(iflladdr_event, iflladdr_tag);
  vlan_input_p = ((void*)0);
  vlan_link_state_p = ((void*)0);
  vlan_trunk_cap_p = ((void*)0);
  vlan_trunkdev_p = ((void*)0);
  vlan_tag_p = ((void*)0);
  vlan_cookie_p = ((void*)0);
  vlan_setcookie_p = ((void*)0);
  vlan_devat_p = ((void*)0);
  VLAN_LOCKING_DESTROY();
  if (bootverbose)
   printf("vlan: unloaded\n");
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}
