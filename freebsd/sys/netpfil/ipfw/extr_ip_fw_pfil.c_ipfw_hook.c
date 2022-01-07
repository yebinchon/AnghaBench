
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfil_hook_args {int pa_flags; char* pa_modname; char* pa_rulname; int pa_type; void* pa_func; int * pa_ruleset; int pa_version; } ;
typedef int pfil_hook_t ;





 int PFIL_IN ;
 int PFIL_MEMPTR ;
 int PFIL_OUT ;
 int PFIL_TYPE_ETHERNET ;
 int PFIL_TYPE_IP4 ;
 int PFIL_TYPE_IP6 ;
 int PFIL_VERSION ;
 int V_ipfw_inet6_hook ;
 int V_ipfw_inet_hook ;
 int V_ipfw_link_hook ;
 void* ipfw_check_frame ;
 void* ipfw_check_packet ;
 int pfil_add_hook (struct pfil_hook_args*) ;

__attribute__((used)) static void
ipfw_hook(int pf)
{
 struct pfil_hook_args pha;
 pfil_hook_t *h;

 pha.pa_version = PFIL_VERSION;
 pha.pa_flags = PFIL_IN | PFIL_OUT;
 pha.pa_modname = "ipfw";
 pha.pa_ruleset = ((void*)0);

 switch (pf) {
 case 130:
  pha.pa_func = ipfw_check_packet;
  pha.pa_type = PFIL_TYPE_IP4;
  pha.pa_rulname = "default";
  h = &V_ipfw_inet_hook;
  break;
 case 128:
  pha.pa_func = ipfw_check_frame;
  pha.pa_type = PFIL_TYPE_ETHERNET;
  pha.pa_rulname = "default-link";
  pha.pa_flags |= PFIL_MEMPTR;
  h = &V_ipfw_link_hook;
  break;
 }

 *h = pfil_add_hook(&pha);
}
