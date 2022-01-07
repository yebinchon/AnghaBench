
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evname_elem {scalar_t__ ene_bsm_probe_enabled; scalar_t__ ene_commit_probe_enabled; } ;
typedef int au_id_t ;
typedef int au_event_t ;
typedef int au_class_t ;


 struct evname_elem* au_evnamemap_lookup (int ) ;
 int audit_dtrace_enabled ;

__attribute__((used)) static void *
dtaudit_preselect(au_id_t auid, au_event_t event, au_class_t class)
{
 struct evname_elem *ene;
 int probe_enabled;





 if (!audit_dtrace_enabled)
  return (((void*)0));
 ene = au_evnamemap_lookup(event);
 if (ene == ((void*)0))
  return (((void*)0));
 probe_enabled = ene->ene_commit_probe_enabled ||
     ene->ene_bsm_probe_enabled;
 if (!probe_enabled)
  return (((void*)0));
 return ((void *)ene);
}
