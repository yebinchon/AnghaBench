
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int AF_INET ;
 int AF_INET6 ;
 int AF_LINK ;
 int TUNABLE_INT_FETCH (char*,scalar_t__*) ;
 scalar_t__ V_fw6_enable ;
 scalar_t__ V_fw_enable ;
 scalar_t__ V_fwlink_enable ;
 int ipfw_hook (int ) ;
 int ipfw_link (int ,int) ;
 int printf (char*) ;

int
ipfw_attach_hooks(void)
{
 int error = 0;

 ipfw_hook(AF_INET);
 TUNABLE_INT_FETCH("net.inet.ip.fw.enable", &V_fw_enable);
 if (V_fw_enable && (error = ipfw_link(AF_INET, 0)) != 0)
                printf("ipfw_hook() error\n");






 ipfw_hook(AF_LINK);
 TUNABLE_INT_FETCH("net.link.ether.ipfw", &V_fwlink_enable);
 if (V_fwlink_enable && (error = ipfw_link(AF_LINK, 0)) != 0)
                printf("ipfw_link_hook() error\n");

 return (error);
}
