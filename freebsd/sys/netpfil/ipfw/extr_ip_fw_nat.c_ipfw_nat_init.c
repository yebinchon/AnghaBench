
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 int IPFW_ADD_SOPT_HANDLER (int,int ) ;
 int ifaddr_change ;
 int ifaddr_event ;
 int ifaddr_event_tag ;
 int ipfw_nat ;
 int ipfw_nat_cfg ;
 int ipfw_nat_cfg_ptr ;
 int ipfw_nat_del ;
 int ipfw_nat_del_ptr ;
 int ipfw_nat_get_cfg ;
 int ipfw_nat_get_cfg_ptr ;
 int ipfw_nat_get_log ;
 int ipfw_nat_get_log_ptr ;
 int ipfw_nat_ptr ;
 int lookup_nat ;
 int lookup_nat_ptr ;
 int scodes ;

__attribute__((used)) static void
ipfw_nat_init(void)
{


 ipfw_nat_ptr = ipfw_nat;
 lookup_nat_ptr = lookup_nat;
 ipfw_nat_cfg_ptr = ipfw_nat_cfg;
 ipfw_nat_del_ptr = ipfw_nat_del;
 ipfw_nat_get_cfg_ptr = ipfw_nat_get_cfg;
 ipfw_nat_get_log_ptr = ipfw_nat_get_log;
 IPFW_ADD_SOPT_HANDLER(1, scodes);

 ifaddr_event_tag = EVENTHANDLER_REGISTER(ifaddr_event, ifaddr_change,
     ((void*)0), EVENTHANDLER_PRI_ANY);
}
