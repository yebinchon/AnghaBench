
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct object {int dummy; } ;
struct commit {int dummy; } ;


 int OBJ_COMMIT ;
 scalar_t__ get_oid (char const*,struct object_id*) ;
 int merge_remote_util (struct commit*) ;
 struct object* parse_object (int ,struct object_id*) ;
 scalar_t__ peel_to_type (char const*,int ,struct object*,int ) ;
 int set_merge_remote_desc (struct commit*,char const*,struct object*) ;
 int the_repository ;

struct commit *get_merge_parent(const char *name)
{
 struct object *obj;
 struct commit *commit;
 struct object_id oid;
 if (get_oid(name, &oid))
  return ((void*)0);
 obj = parse_object(the_repository, &oid);
 commit = (struct commit *)peel_to_type(name, 0, obj, OBJ_COMMIT);
 if (commit && !merge_remote_util(commit))
  set_merge_remote_desc(commit, name, obj);
 return commit;
}
