
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct object_id {int dummy; } ;
struct object {scalar_t__ type; int flags; } ;
struct TYPE_2__ {int object_names; } ;


 int ERROR_REACHABLE ;
 int ERROR_REFS ;
 scalar_t__ OBJ_COMMIT ;
 int USED ;
 int _ (char*) ;
 int add_decoration (int ,struct object*,int ) ;
 int default_refs ;
 int error (int ,char const*,...) ;
 int errors_found ;
 TYPE_1__ fsck_walk_options ;
 scalar_t__ is_branch (char const*) ;
 scalar_t__ is_promisor_object (struct object_id const*) ;
 int mark_object_reachable (struct object*) ;
 scalar_t__ name_objects ;
 char* oid_to_hex (struct object_id const*) ;
 struct object* parse_object (int ,struct object_id const*) ;
 int the_repository ;
 int xstrdup (char const*) ;

__attribute__((used)) static int fsck_handle_ref(const char *refname, const struct object_id *oid,
      int flag, void *cb_data)
{
 struct object *obj;

 obj = parse_object(the_repository, oid);
 if (!obj) {
  if (is_promisor_object(oid)) {




    default_refs++;
    return 0;
  }
  error(_("%s: invalid sha1 pointer %s"),
        refname, oid_to_hex(oid));
  errors_found |= ERROR_REACHABLE;

  return 0;
 }
 if (obj->type != OBJ_COMMIT && is_branch(refname)) {
  error(_("%s: not a commit"), refname);
  errors_found |= ERROR_REFS;
 }
 default_refs++;
 obj->flags |= USED;
 if (name_objects)
  add_decoration(fsck_walk_options.object_names,
   obj, xstrdup(refname));
 mark_object_reachable(obj);

 return 0;
}
