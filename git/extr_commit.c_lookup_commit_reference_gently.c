
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {int dummy; } ;
struct object_id {int dummy; } ;
struct object {int dummy; } ;
struct commit {int dummy; } ;


 int OBJ_COMMIT ;
 struct object* deref_tag (struct repository*,int ,int *,int ) ;
 struct commit* object_as_type (struct repository*,struct object*,int ,int) ;
 int parse_object (struct repository*,struct object_id const*) ;

struct commit *lookup_commit_reference_gently(struct repository *r,
  const struct object_id *oid, int quiet)
{
 struct object *obj = deref_tag(r,
           parse_object(r, oid),
           ((void*)0), 0);

 if (!obj)
  return ((void*)0);
 return object_as_type(r, obj, OBJ_COMMIT, quiet);
}
