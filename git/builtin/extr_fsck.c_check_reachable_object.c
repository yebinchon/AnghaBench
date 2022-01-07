
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object {int flags; int oid; } ;


 int ERROR_REACHABLE ;
 int HAS_OBJ ;
 int _ (char*) ;
 int describe_object (struct object*) ;
 int errors_found ;
 scalar_t__ has_object_pack (int *) ;
 scalar_t__ is_promisor_object (int *) ;
 int printable_type (struct object*) ;
 int printf_ln (int ,int ,int ) ;

__attribute__((used)) static void check_reachable_object(struct object *obj)
{





 if (!(obj->flags & HAS_OBJ)) {
  if (is_promisor_object(&obj->oid))
   return;
  if (has_object_pack(&obj->oid))
   return;
  printf_ln(_("missing %s %s"), printable_type(obj),
     describe_object(obj));
  errors_found |= ERROR_REACHABLE;
  return;
 }
}
