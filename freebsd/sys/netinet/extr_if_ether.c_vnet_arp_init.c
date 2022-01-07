
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EVENTHANDLER_PRI_ANY ;
 int EVENTHANDLER_REGISTER (int ,int ,int *,int ) ;
 scalar_t__ IS_DEFAULT_VNET (int ) ;
 int arp_iflladdr ;
 int arp_nh ;
 int curvnet ;
 int iflladdr_event ;
 int iflladdr_tag ;
 int netisr_register (int *) ;
 int netisr_register_vnet (int *) ;

__attribute__((used)) static void
vnet_arp_init(void)
{

 if (IS_DEFAULT_VNET(curvnet)) {
  netisr_register(&arp_nh);
  iflladdr_tag = EVENTHANDLER_REGISTER(iflladdr_event,
      arp_iflladdr, ((void*)0), EVENTHANDLER_PRI_ANY);
 }




}
