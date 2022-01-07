
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaudit_record {int k_ar; scalar_t__ k_dtaudit_state; } ;
struct evname_elem {int ene_bsm_probe_enabled; int ene_commit_probe_id; int * ene_name; scalar_t__ ene_commit_probe_enabled; } ;
typedef int ene_name_lower ;
typedef int au_id_t ;
typedef int au_event_t ;
typedef int au_class_t ;


 int EVNAMEMAP_NAME_SIZE ;
 int EVNAME_LOCK (struct evname_elem*) ;
 int EVNAME_UNLOCK (struct evname_elem*) ;
 int dtrace_probe (int ,uintptr_t,uintptr_t,int ,int ,int ) ;
 char tolower (int ) ;

__attribute__((used)) static int
dtaudit_commit(struct kaudit_record *kar, au_id_t auid, au_event_t event,
    au_class_t class, int sorf)
{
 char ene_name_lower[EVNAMEMAP_NAME_SIZE];
 struct evname_elem *ene;
 int i;

 ene = (struct evname_elem *)kar->k_dtaudit_state;
 if (ene == ((void*)0))
  return (0);




 if (ene->ene_commit_probe_enabled) {
  EVNAME_LOCK(ene);
  for (i = 0; i < sizeof(ene_name_lower); i++)
   ene_name_lower[i] = tolower(ene->ene_name[i]);
  EVNAME_UNLOCK(ene);
  dtrace_probe(ene->ene_commit_probe_id,
      (uintptr_t)ene_name_lower, (uintptr_t)&kar->k_ar, 0, 0, 0);
 }




 return (ene->ene_bsm_probe_enabled);
}
