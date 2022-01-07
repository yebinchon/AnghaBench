
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_DEREGISTER (int ,int ) ;
 int IPFW_DEL_SOPT_HANDLER (int,int ) ;
 int ifaddr_event ;
 int ifaddr_event_tag ;
 int * ipfw_nat_cfg_ptr ;
 int * ipfw_nat_del_ptr ;
 int * ipfw_nat_get_cfg_ptr ;
 int * ipfw_nat_get_log_ptr ;
 int * ipfw_nat_ptr ;
 int * lookup_nat_ptr ;
 int scodes ;

__attribute__((used)) static void
ipfw_nat_destroy(void)
{

 EVENTHANDLER_DEREGISTER(ifaddr_event, ifaddr_event_tag);

 IPFW_DEL_SOPT_HANDLER(1, scodes);
 ipfw_nat_ptr = ((void*)0);
 lookup_nat_ptr = ((void*)0);
 ipfw_nat_cfg_ptr = ((void*)0);
 ipfw_nat_del_ptr = ((void*)0);
 ipfw_nat_get_cfg_ptr = ((void*)0);
 ipfw_nat_get_log_ptr = ((void*)0);
}
