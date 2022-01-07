
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int flags; } ;


 int HAS_OBJ ;
 struct object* lookup_unknown_object (struct object_id const*) ;

__attribute__((used)) static void mark_object_for_connectivity(const struct object_id *oid)
{
 struct object *obj = lookup_unknown_object(oid);
 obj->flags |= HAS_OBJ;
}
