
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ref {struct ref* next; int old_oid; int peer_ref; } ;
struct object_id {int dummy; } ;


 int oidcpy (struct object_id*,int *) ;

__attribute__((used)) static int iterate_ref_map(void *cb_data, struct object_id *oid)
{
 struct ref **rm = cb_data;
 struct ref *ref = *rm;





 while (ref && !ref->peer_ref)
  ref = ref->next;

 if (!ref)
  return -1;

 oidcpy(oid, &ref->old_oid);
 *rm = ref->next;
 return 0;
}
