
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int oid; int type; } ;


 int BUG (char*) ;




 int arg_missing_action ;
 int die (char*,int ,int ) ;
 int is_promisor_object (int *) ;
 int missing_objects ;
 int oid_to_hex (int *) ;
 int oidset_insert (int *,int *) ;
 int type_name (int ) ;

__attribute__((used)) static inline void finish_object__ma(struct object *obj)
{






 switch (arg_missing_action) {
 case 129:
  die("missing %s object '%s'",
      type_name(obj->type), oid_to_hex(&obj->oid));
  return;

 case 131:
  return;

 case 128:
  oidset_insert(&missing_objects, &obj->oid);
  return;

 case 130:
  if (is_promisor_object(&obj->oid))
   return;
  die("unexpected missing %s object '%s'",
      type_name(obj->type), oid_to_hex(&obj->oid));
  return;

 default:
  BUG("unhandled missing_action");
  return;
 }
}
