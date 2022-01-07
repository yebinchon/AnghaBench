
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct branch_info {char const* name; scalar_t__ commit; } ;


 int _ (char*) ;
 int die (int ,char const*) ;
 int dwim_ref (char const*,int ,struct object_id*,char**) ;
 scalar_t__ skip_prefix (char const*,char*,char const**) ;
 int strlen (char const*) ;

__attribute__((used)) static void die_expecting_a_branch(const struct branch_info *branch_info)
{
 struct object_id oid;
 char *to_free;

 if (dwim_ref(branch_info->name, strlen(branch_info->name), &oid, &to_free) == 1) {
  const char *ref = to_free;

  if (skip_prefix(ref, "refs/tags/", &ref))
   die(_("a branch is expected, got tag '%s'"), ref);
  if (skip_prefix(ref, "refs/remotes/", &ref))
   die(_("a branch is expected, got remote branch '%s'"), ref);
  die(_("a branch is expected, got '%s'"), ref);
 }
 if (branch_info->commit)
  die(_("a branch is expected, got commit '%s'"), branch_info->name);




 die(_("a branch is expected, got '%s'"), branch_info->name);
}
