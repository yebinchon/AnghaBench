
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int AF_LINK ;
 int ipfw_unhook (int ) ;

void
ipfw_detach_hooks(void)
{

 ipfw_unhook(AF_INET);



 ipfw_unhook(AF_LINK);
}
