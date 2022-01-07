
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kaudit_record {int k_ar; scalar_t__ k_dtaudit_state; } ;
struct evname_elem {int ene_bsm_probe_id; int * ene_name; int ene_bsm_probe_enabled; } ;
typedef int ene_name_lower ;
typedef int au_id_t ;
typedef int au_event_t ;
typedef int au_class_t ;


 int EVNAMEMAP_NAME_SIZE ;
 int EVNAME_LOCK (struct evname_elem*) ;
 int EVNAME_UNLOCK (struct evname_elem*) ;
 int dtrace_probe (int ,uintptr_t,uintptr_t,uintptr_t,uintptr_t,int ) ;
 char tolower (int ) ;

__attribute__((used)) static void
dtaudit_bsm(struct kaudit_record *kar, au_id_t auid, au_event_t event,
    au_class_t class, int sorf, void *bsm_data, size_t bsm_len)
{
 char ene_name_lower[EVNAMEMAP_NAME_SIZE];
 struct evname_elem *ene;
 int i;

 ene = (struct evname_elem *)kar->k_dtaudit_state;
 if (ene == ((void*)0))
  return;
 if (!(ene->ene_bsm_probe_enabled))
  return;
 EVNAME_LOCK(ene);
 for (i = 0; i < sizeof(ene_name_lower); i++)
  ene_name_lower[i] = tolower(ene->ene_name[i]);
 EVNAME_UNLOCK(ene);
 dtrace_probe(ene->ene_bsm_probe_id, (uintptr_t)ene_name_lower,
     (uintptr_t)&kar->k_ar, (uintptr_t)bsm_data, (uintptr_t)bsm_len,
     0);
}
