
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {int buf; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;


 int DEFAULT_ABBREV ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,char const*) ;
 char const* find_unique_abbrev (int *,int ) ;
 struct commit* lookup_commit_reference_by_name (char const*) ;
 int printf_ln (int ,char const*,...) ;
 scalar_t__ ref_exists (int ) ;
 int strbuf_check_branch_ref (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;

__attribute__((used)) static void print_preparing_worktree_line(int detach,
       const char *branch,
       const char *new_branch,
       int force_new_branch)
{
 if (force_new_branch) {
  struct commit *commit = lookup_commit_reference_by_name(new_branch);
  if (!commit)
   printf_ln(_("Preparing worktree (new branch '%s')"), new_branch);
  else
   printf_ln(_("Preparing worktree (resetting branch '%s'; was at %s)"),
      new_branch,
      find_unique_abbrev(&commit->object.oid, DEFAULT_ABBREV));
 } else if (new_branch) {
  printf_ln(_("Preparing worktree (new branch '%s')"), new_branch);
 } else {
  struct strbuf s = STRBUF_INIT;
  if (!detach && !strbuf_check_branch_ref(&s, branch) &&
      ref_exists(s.buf))
   printf_ln(_("Preparing worktree (checking out '%s')"),
      branch);
  else {
   struct commit *commit = lookup_commit_reference_by_name(branch);
   if (!commit)
    die(_("invalid reference: %s"), branch);
   printf_ln(_("Preparing worktree (detached HEAD %s)"),
      find_unique_abbrev(&commit->object.oid, DEFAULT_ABBREV));
  }
  strbuf_release(&s);
 }
}
