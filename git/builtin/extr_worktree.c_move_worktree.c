
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {char const* path; } ;
struct strbuf {char const* buf; } ;
struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT__FORCE (int*,int ,int ) ;
 int PARSE_OPT_NOCOMPLETE ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int die (int ,...) ;
 int die_errno (int ,char const*,char const*) ;
 scalar_t__ file_exists (char const*) ;
 char* find_last_dir_sep (char const*) ;
 struct worktree* find_worktree (struct worktree**,char const*,char const*) ;
 int free (char*) ;
 int free_worktrees (struct worktree**) ;
 struct worktree** get_worktrees (int ) ;
 scalar_t__ is_directory (char const*) ;
 scalar_t__ is_main_worktree (struct worktree*) ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 char* prefix_filename (char const*,char const*) ;
 int rename (char const*,char const*) ;
 int strbuf_addstr (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_trim_trailing_dir_sep (struct strbuf*) ;
 int update_worktree_location (struct worktree*,char const*) ;
 int usage_with_options (int ,struct option*) ;
 int validate_no_submodules (struct worktree*) ;
 scalar_t__ validate_worktree (struct worktree*,struct strbuf*,int ) ;
 char* worktree_lock_reason (struct worktree*) ;
 int worktree_usage ;

__attribute__((used)) static int move_worktree(int ac, const char **av, const char *prefix)
{
 int force = 0;
 struct option options[] = {
  OPT__FORCE(&force,
    N_("force move even if worktree is dirty or locked"),
    PARSE_OPT_NOCOMPLETE),
  OPT_END()
 };
 struct worktree **worktrees, *wt;
 struct strbuf dst = STRBUF_INIT;
 struct strbuf errmsg = STRBUF_INIT;
 const char *reason = ((void*)0);
 char *path;

 ac = parse_options(ac, av, prefix, options, worktree_usage, 0);
 if (ac != 2)
  usage_with_options(worktree_usage, options);

 path = prefix_filename(prefix, av[1]);
 strbuf_addstr(&dst, path);
 free(path);

 worktrees = get_worktrees(0);
 wt = find_worktree(worktrees, prefix, av[0]);
 if (!wt)
  die(_("'%s' is not a working tree"), av[0]);
 if (is_main_worktree(wt))
  die(_("'%s' is a main working tree"), av[0]);
 if (is_directory(dst.buf)) {
  const char *sep = find_last_dir_sep(wt->path);

  if (!sep)
   die(_("could not figure out destination name from '%s'"),
       wt->path);
  strbuf_trim_trailing_dir_sep(&dst);
  strbuf_addstr(&dst, sep);
 }
 if (file_exists(dst.buf))
  die(_("target '%s' already exists"), dst.buf);

 validate_no_submodules(wt);

 if (force < 2)
  reason = worktree_lock_reason(wt);
 if (reason) {
  if (*reason)
   die(_("cannot move a locked working tree, lock reason: %s\nuse 'move -f -f' to override or unlock first"),
       reason);
  die(_("cannot move a locked working tree;\nuse 'move -f -f' to override or unlock first"));
 }
 if (validate_worktree(wt, &errmsg, 0))
  die(_("validation failed, cannot move working tree: %s"),
      errmsg.buf);
 strbuf_release(&errmsg);

 if (rename(wt->path, dst.buf) == -1)
  die_errno(_("failed to move '%s' to '%s'"), wt->path, dst.buf);

 update_worktree_location(wt, dst.buf);

 strbuf_release(&dst);
 free_worktrees(worktrees);
 return 0;
}
