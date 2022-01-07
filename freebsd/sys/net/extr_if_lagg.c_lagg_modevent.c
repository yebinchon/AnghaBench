
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;


 int ifnet_departure_event ;
 int lagg_detach_cookie ;
 int * lagg_input ;
 int * lagg_input_p ;
 int * lagg_linkstate_p ;
 int lagg_port_ifdetach ;
 int * lagg_port_state ;

__attribute__((used)) static int
lagg_modevent(module_t mod, int type, void *data)
{

 switch (type) {
 case 129:
  lagg_input_p = lagg_input;
  lagg_linkstate_p = lagg_port_state;
  lagg_detach_cookie = EVENTHANDLER_REGISTER(
      ifnet_departure_event, lagg_port_ifdetach, ((void*)0),
      EVENTHANDLER_PRI_ANY);
  break;
 case 128:
  EVENTHANDLER_DEREGISTER(ifnet_departure_event,
      lagg_detach_cookie);
  lagg_input_p = ((void*)0);
  lagg_linkstate_p = ((void*)0);
  break;
 default:
  return (EOPNOTSUPP);
 }
 return (0);
}
