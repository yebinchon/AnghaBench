
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int id; int path; } ;
struct strbuf {char const* buf; } ;
struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT__FORCE (int*,int ,int ) ;
 int PARSE_OPT_NOCOMPLETE ;
 struct strbuf STRBUF_INIT ;
 int WT_VALIDATE_WORKTREE_MISSING_OK ;
 int _ (char*) ;
 int check_clean_worktree (struct worktree*,char const*) ;
 int delete_git_dir (int ) ;
 int delete_git_work_tree (struct worktree*) ;
 int delete_worktrees_dir_if_empty () ;
 int die (int ,...) ;
 scalar_t__ file_exists (int ) ;
 struct worktree* find_worktree (struct worktree**,char const*,char const*) ;
 int free_worktrees (struct worktree**) ;
 struct worktree** get_worktrees (int ) ;
 scalar_t__ is_main_worktree (struct worktree*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int strbuf_release (struct strbuf*) ;
 int usage_with_options (int ,struct option*) ;
 scalar_t__ validate_worktree (struct worktree*,struct strbuf*,int ) ;
 char* worktree_lock_reason (struct worktree*) ;
 int worktree_usage ;

__attribute__((used)) static int remove_worktree(int ac, const char **av, const char *prefix)
{
 int force = 0;
 struct option options[] = {
  OPT__FORCE(&force,
    N_("force removal even if worktree is dirty or locked"),
    PARSE_OPT_NOCOMPLETE),
  OPT_END()
 };
 struct worktree **worktrees, *wt;
 struct strbuf errmsg = STRBUF_INIT;
 const char *reason = ((void*)0);
 int ret = 0;

 ac = parse_options(ac, av, prefix, options, worktree_usage, 0);
 if (ac != 1)
  usage_with_options(worktree_usage, options);

 worktrees = get_worktrees(0);
 wt = find_worktree(worktrees, prefix, av[0]);
 if (!wt)
  die(_("'%s' is not a working tree"), av[0]);
 if (is_main_worktree(wt))
  die(_("'%s' is a main working tree"), av[0]);
 if (force < 2)
  reason = worktree_lock_reason(wt);
 if (reason) {
  if (*reason)
   die(_("cannot remove a locked working tree, lock reason: %s\nuse 'remove -f -f' to override or unlock first"),
       reason);
  die(_("cannot remove a locked working tree;\nuse 'remove -f -f' to override or unlock first"));
 }
 if (validate_worktree(wt, &errmsg, WT_VALIDATE_WORKTREE_MISSING_OK))
  die(_("validation failed, cannot remove working tree: %s"),
      errmsg.buf);
 strbuf_release(&errmsg);

 if (file_exists(wt->path)) {
  if (!force)
   check_clean_worktree(wt, av[0]);

  ret |= delete_git_work_tree(wt);
 }




 ret |= delete_git_dir(wt->id);
 delete_worktrees_dir_if_empty();

 free_worktrees(worktrees);
 return ret;
}
