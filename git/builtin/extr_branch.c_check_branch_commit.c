
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct object_id {int dummy; } ;
struct commit {int dummy; } ;


 int _ (char*) ;
 int branch_merged (int,char const*,struct commit*,struct commit*) ;
 int error (int ,char const*,...) ;
 struct commit* lookup_commit_reference (int ,struct object_id const*) ;
 int the_repository ;

__attribute__((used)) static int check_branch_commit(const char *branchname, const char *refname,
          const struct object_id *oid, struct commit *head_rev,
          int kinds, int force)
{
 struct commit *rev = lookup_commit_reference(the_repository, oid);
 if (!rev) {
  error(_("Couldn't look up commit object for '%s'"), refname);
  return -1;
 }
 if (!force && !branch_merged(kinds, branchname, rev, head_rev)) {
  error(_("The branch '%s' is not fully merged.\n"
        "If you are sure you want to delete it, "
        "run 'git branch -D %s'."), branchname, branchname);
  return -1;
 }
 return 0;
}
