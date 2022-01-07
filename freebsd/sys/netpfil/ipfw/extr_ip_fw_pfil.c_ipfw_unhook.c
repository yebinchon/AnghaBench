
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int V_ipfw_inet6_hook ;
 int V_ipfw_inet_hook ;
 int V_ipfw_link_hook ;
 int pfil_remove_hook (int ) ;

__attribute__((used)) static void
ipfw_unhook(int pf)
{

 switch (pf) {
 case 130:
  pfil_remove_hook(V_ipfw_inet_hook);
  break;





 case 128:
  pfil_remove_hook(V_ipfw_link_hook);
  break;
 }
}
