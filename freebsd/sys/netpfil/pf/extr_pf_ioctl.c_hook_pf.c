
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfil_link_args {void* pa_hook; void* pa_head; void* pa_flags; void* pa_version; } ;
struct pfil_hook_args {char* pa_modname; char* pa_rulname; void* pa_flags; int pa_func; int pa_type; int * pa_ruleset; void* pa_version; } ;


 void* PFIL_HEADPTR ;
 void* PFIL_HOOKPTR ;
 void* PFIL_IN ;
 void* PFIL_OUT ;
 int PFIL_TYPE_IP4 ;
 int PFIL_TYPE_IP6 ;
 void* PFIL_VERSION ;
 void* V_inet6_pfil_head ;
 void* V_inet_pfil_head ;
 void* V_pf_ip4_in_hook ;
 void* V_pf_ip4_out_hook ;
 void* V_pf_ip6_in_hook ;
 void* V_pf_ip6_out_hook ;
 int V_pf_pfil_hooked ;
 int pf_check6_in ;
 int pf_check6_out ;
 int pf_check_in ;
 int pf_check_out ;
 void* pfil_add_hook (struct pfil_hook_args*) ;
 int pfil_link (struct pfil_link_args*) ;

__attribute__((used)) static int
hook_pf(void)
{
 struct pfil_hook_args pha;
 struct pfil_link_args pla;

 if (V_pf_pfil_hooked)
  return (0);

 pha.pa_version = PFIL_VERSION;
 pha.pa_modname = "pf";
 pha.pa_ruleset = ((void*)0);

 pla.pa_version = PFIL_VERSION;
 V_pf_pfil_hooked = 1;
 return (0);
}
