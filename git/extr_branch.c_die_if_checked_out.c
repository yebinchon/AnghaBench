
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int path; scalar_t__ is_current; } ;


 int _ (char*) ;
 int die (int ,char const*,int ) ;
 struct worktree* find_shared_symref (char*,char const*) ;
 int skip_prefix (char const*,char*,char const**) ;

void die_if_checked_out(const char *branch, int ignore_current_worktree)
{
 const struct worktree *wt;

 wt = find_shared_symref("HEAD", branch);
 if (!wt || (ignore_current_worktree && wt->is_current))
  return;
 skip_prefix(branch, "refs/heads/", &branch);
 die(_("'%s' is already checked out at '%s'"),
     branch, wt->path);
}
