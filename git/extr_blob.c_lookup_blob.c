
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;
struct blob {int dummy; } ;


 int OBJ_BLOB ;
 int alloc_blob_node (struct repository*) ;
 struct blob* create_object (struct repository*,struct object_id const*,int ) ;
 struct object* lookup_object (struct repository*,struct object_id const*) ;
 struct blob* object_as_type (struct repository*,struct object*,int ,int ) ;

struct blob *lookup_blob(struct repository *r, const struct object_id *oid)
{
 struct object *obj = lookup_object(r, oid);
 if (!obj)
  return create_object(r, oid, alloc_blob_node(r));
 return object_as_type(r, obj, OBJ_BLOB, 0);
}
