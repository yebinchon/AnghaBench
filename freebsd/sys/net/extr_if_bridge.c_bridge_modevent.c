
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;


 int bridge_detach_cookie ;
 int * bridge_dn_p ;
 int * bridge_dummynet ;
 int bridge_ifdetach ;
 int ifnet_departure_event ;

__attribute__((used)) static int
bridge_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  bridge_dn_p = bridge_dummynet;
  bridge_detach_cookie = EVENTHANDLER_REGISTER(
      ifnet_departure_event, bridge_ifdetach, ((void*)0),
      EVENTHANDLER_PRI_ANY);
  break;
 case 128:
  EVENTHANDLER_DEREGISTER(ifnet_departure_event,
      bridge_detach_cookie);
  bridge_dn_p = ((void*)0);
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}
