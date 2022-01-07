
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int module_t ;


 int EEXIST ;
 int EOPNOTSUPP ;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;


 int ifnet_arrival_event ;
 int * ng_ether_attach ;
 int * ng_ether_attach_p ;
 int * ng_ether_detach ;
 int * ng_ether_detach_p ;
 int ng_ether_ifnet_arrival_cookie ;
 int ng_ether_ifnet_arrival_event ;
 int * ng_ether_input ;
 int * ng_ether_input_orphan ;
 int * ng_ether_input_orphan_p ;
 int * ng_ether_input_p ;
 int * ng_ether_link_state ;
 int * ng_ether_link_state_p ;
 int * ng_ether_output ;
 int * ng_ether_output_p ;

__attribute__((used)) static int
ng_ether_mod_event(module_t mod, int event, void *data)
{
 int error = 0;

 switch (event) {
 case 129:


  if (ng_ether_attach_p != ((void*)0)) {
   error = EEXIST;
   break;
  }
  ng_ether_attach_p = ng_ether_attach;
  ng_ether_detach_p = ng_ether_detach;
  ng_ether_output_p = ng_ether_output;
  ng_ether_input_p = ng_ether_input;
  ng_ether_input_orphan_p = ng_ether_input_orphan;
  ng_ether_link_state_p = ng_ether_link_state;

  ng_ether_ifnet_arrival_cookie =
      EVENTHANDLER_REGISTER(ifnet_arrival_event,
      ng_ether_ifnet_arrival_event, ((void*)0), EVENTHANDLER_PRI_ANY);
  break;

 case 128:
  EVENTHANDLER_DEREGISTER(ifnet_arrival_event,
      ng_ether_ifnet_arrival_cookie);


  ng_ether_attach_p = ((void*)0);
  ng_ether_detach_p = ((void*)0);
  ng_ether_output_p = ((void*)0);
  ng_ether_input_p = ((void*)0);
  ng_ether_input_orphan_p = ((void*)0);
  ng_ether_link_state_p = ((void*)0);
  break;

 default:
  error = EOPNOTSUPP;
  break;
 }
 return (error);
}
