
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pfil_link_args {int pa_flags; int pa_hook; int pa_head; int pa_version; } ;





 int PFIL_HEADPTR ;
 int PFIL_HOOKPTR ;
 int PFIL_IN ;
 int PFIL_OUT ;
 int PFIL_UNLINK ;
 int PFIL_VERSION ;
 int V_inet6_pfil_head ;
 int V_inet_pfil_head ;
 int V_ipfw_inet6_hook ;
 int V_ipfw_inet_hook ;
 int V_ipfw_link_hook ;
 int V_link_pfil_head ;
 int pfil_link (struct pfil_link_args*) ;

__attribute__((used)) static int
ipfw_link(int pf, bool unlink)
{
 struct pfil_link_args pla;

 pla.pa_version = PFIL_VERSION;
 pla.pa_flags = PFIL_IN | PFIL_OUT | PFIL_HEADPTR | PFIL_HOOKPTR;
 if (unlink)
  pla.pa_flags |= PFIL_UNLINK;

 switch (pf) {
 case 130:
  pla.pa_head = V_inet_pfil_head;
  pla.pa_hook = V_ipfw_inet_hook;
  break;






 case 128:
  pla.pa_head = V_link_pfil_head;
  pla.pa_hook = V_ipfw_link_hook;
  break;
 }

 return (pfil_link(&pla));
}
