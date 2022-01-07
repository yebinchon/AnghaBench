
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct evname_elem {scalar_t__ ene_commit_probe_id; scalar_t__ ene_bsm_probe_id; int * ene_name; } ;
typedef int ene_name_lower ;


 int EVNAMEMAP_NAME_SIZE ;
 int dtaudit_id ;
 int dtaudit_module_str ;
 int dtaudit_name_bsm_str ;
 int dtaudit_name_commit_str ;
 void* dtrace_probe_create (int ,int ,char*,int ,int ,struct evname_elem*) ;
 scalar_t__ dtrace_probe_lookup (int ,int ,char*,int ) ;
 char tolower (int ) ;

__attribute__((used)) static void
dtaudit_au_evnamemap_callback(struct evname_elem *ene)
{
 char ene_name_lower[EVNAMEMAP_NAME_SIZE];
 int i;
 for (i = 0; i < sizeof(ene_name_lower); i++)
  ene_name_lower[i] = tolower(ene->ene_name[i]);
 if ((ene->ene_commit_probe_id == 0) &&
     (dtrace_probe_lookup(dtaudit_id, dtaudit_module_str,
     ene_name_lower, dtaudit_name_commit_str) == 0)) {
  ene->ene_commit_probe_id = dtrace_probe_create(dtaudit_id,
      dtaudit_module_str, ene_name_lower,
      dtaudit_name_commit_str, 0, ene);
 }
 if ((ene->ene_bsm_probe_id == 0) &&
     (dtrace_probe_lookup(dtaudit_id, dtaudit_module_str,
     ene_name_lower, dtaudit_name_bsm_str) == 0)) {
  ene->ene_bsm_probe_id = dtrace_probe_create(dtaudit_id,
      dtaudit_module_str, ene_name_lower, dtaudit_name_bsm_str,
      0, ene);
 }
}
