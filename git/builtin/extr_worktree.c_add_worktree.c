
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct strbuf {char* buf; int len; } ;
struct TYPE_2__ {int oid; } ;
struct commit {TYPE_1__ object; } ;
struct argv_array {char const** argv; } ;
struct child_process {int git_cmd; char const** env; int no_stdin; int stdout_to_stderr; char const* dir; char* trace2_hook_name; struct argv_array args; int * argv; } ;
struct add_opts {scalar_t__ checkout; int keep_locked; scalar_t__ quiet; int force; int detach; } ;


 struct argv_array ARGV_ARRAY_INIT ;
 int BUG (char*,char*) ;
 struct child_process CHILD_PROCESS_INIT ;
 scalar_t__ EEXIST ;
 int FREE_AND_NULL (int ) ;
 int GIT_DIR_ENVIRONMENT ;
 int GIT_WORK_TREE_ENVIRONMENT ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 int absolute_path (char const*) ;
 int argv_array_clear (struct argv_array*) ;
 int argv_array_push (struct argv_array*,char*) ;
 int argv_array_pushf (struct argv_array*,char*,int ,char const*) ;
 int argv_array_pushl (struct argv_array*,char*,char*,char const*,...) ;
 int atexit (int ) ;
 int die (int ,char const*) ;
 int die_errno (int ,char*) ;
 int die_if_checked_out (char*,int ) ;
 scalar_t__ errno ;
 char* find_hook (char*) ;
 char const* get_git_common_dir () ;
 int getpid () ;
 int git_path_buf (struct strbuf*,char*,char const*) ;
 int is_junk ;
 int junk_git_dir ;
 int junk_pid ;
 int junk_work_tree ;
 struct commit* lookup_commit_reference_by_name (char const*) ;
 scalar_t__ mkdir (char*,int) ;
 int null_oid ;
 int oid_to_hex (int *) ;
 int real_path (char const*) ;
 scalar_t__ ref_exists (char*) ;
 int remove_junk ;
 int remove_junk_on_signal ;
 int run_command (struct child_process*) ;
 scalar_t__ safe_create_leading_directories_const (char*) ;
 int sanitize_refname_component (char*,struct strbuf*) ;
 int sigchain_push_common (int ) ;
 int strbuf_add (struct strbuf*,char const*,int) ;
 int strbuf_addf (struct strbuf*,char*,...) ;
 int strbuf_check_branch_ref (struct strbuf*,char const*) ;
 int strbuf_release (struct strbuf*) ;
 int strbuf_reset (struct strbuf*) ;
 int strbuf_setlen (struct strbuf*,int) ;
 char* strrchr (char*,char) ;
 int unlink_or_warn (char const*) ;
 int validate_worktree_add (char const*,struct add_opts const*) ;
 char* worktree_basename (char const*,int*) ;
 int write_file (char const*,char*,...) ;
 int xstrdup (char const*) ;

__attribute__((used)) static int add_worktree(const char *path, const char *refname,
   const struct add_opts *opts)
{
 struct strbuf sb_git = STRBUF_INIT, sb_repo = STRBUF_INIT;
 struct strbuf sb = STRBUF_INIT;
 const char *name;
 struct child_process cp = CHILD_PROCESS_INIT;
 struct argv_array child_env = ARGV_ARRAY_INIT;
 unsigned int counter = 0;
 int len, ret;
 struct strbuf symref = STRBUF_INIT;
 struct commit *commit = ((void*)0);
 int is_branch = 0;
 struct strbuf sb_name = STRBUF_INIT;

 validate_worktree_add(path, opts);


 if (!opts->detach && !strbuf_check_branch_ref(&symref, refname) &&
     ref_exists(symref.buf)) {
  is_branch = 1;
  if (!opts->force)
   die_if_checked_out(symref.buf, 0);
 }
 commit = lookup_commit_reference_by_name(refname);
 if (!commit)
  die(_("invalid reference: %s"), refname);

 name = worktree_basename(path, &len);
 strbuf_add(&sb, name, path + len - name);
 sanitize_refname_component(sb.buf, &sb_name);
 if (!sb_name.len)
  BUG("How come '%s' becomes empty after sanitization?", sb.buf);
 strbuf_reset(&sb);
 name = sb_name.buf;
 git_path_buf(&sb_repo, "worktrees/%s", name);
 len = sb_repo.len;
 if (safe_create_leading_directories_const(sb_repo.buf))
  die_errno(_("could not create leading directories of '%s'"),
     sb_repo.buf);

 while (mkdir(sb_repo.buf, 0777)) {
  counter++;
  if ((errno != EEXIST) || !counter )
   die_errno(_("could not create directory of '%s'"),
      sb_repo.buf);
  strbuf_setlen(&sb_repo, len);
  strbuf_addf(&sb_repo, "%d", counter);
 }
 name = strrchr(sb_repo.buf, '/') + 1;

 junk_pid = getpid();
 atexit(remove_junk);
 sigchain_push_common(remove_junk_on_signal);

 junk_git_dir = xstrdup(sb_repo.buf);
 is_junk = 1;





 strbuf_addf(&sb, "%s/locked", sb_repo.buf);
 if (!opts->keep_locked)
  write_file(sb.buf, "initializing");
 else
  write_file(sb.buf, "added with --lock");

 strbuf_addf(&sb_git, "%s/.git", path);
 if (safe_create_leading_directories_const(sb_git.buf))
  die_errno(_("could not create leading directories of '%s'"),
     sb_git.buf);
 junk_work_tree = xstrdup(path);

 strbuf_reset(&sb);
 strbuf_addf(&sb, "%s/gitdir", sb_repo.buf);
 write_file(sb.buf, "%s", real_path(sb_git.buf));
 write_file(sb_git.buf, "gitdir: %s/worktrees/%s",
     real_path(get_git_common_dir()), name);







 strbuf_reset(&sb);
 strbuf_addf(&sb, "%s/HEAD", sb_repo.buf);
 write_file(sb.buf, "%s", oid_to_hex(&null_oid));
 strbuf_reset(&sb);
 strbuf_addf(&sb, "%s/commondir", sb_repo.buf);
 write_file(sb.buf, "../..");

 argv_array_pushf(&child_env, "%s=%s", GIT_DIR_ENVIRONMENT, sb_git.buf);
 argv_array_pushf(&child_env, "%s=%s", GIT_WORK_TREE_ENVIRONMENT, path);
 cp.git_cmd = 1;

 if (!is_branch)
  argv_array_pushl(&cp.args, "update-ref", "HEAD",
     oid_to_hex(&commit->object.oid), ((void*)0));
 else {
  argv_array_pushl(&cp.args, "symbolic-ref", "HEAD",
     symref.buf, ((void*)0));
  if (opts->quiet)
   argv_array_push(&cp.args, "--quiet");
 }

 cp.env = child_env.argv;
 ret = run_command(&cp);
 if (ret)
  goto done;

 if (opts->checkout) {
  cp.argv = ((void*)0);
  argv_array_clear(&cp.args);
  argv_array_pushl(&cp.args, "reset", "--hard", ((void*)0));
  if (opts->quiet)
   argv_array_push(&cp.args, "--quiet");
  cp.env = child_env.argv;
  ret = run_command(&cp);
  if (ret)
   goto done;
 }

 is_junk = 0;
 FREE_AND_NULL(junk_work_tree);
 FREE_AND_NULL(junk_git_dir);

done:
 if (ret || !opts->keep_locked) {
  strbuf_reset(&sb);
  strbuf_addf(&sb, "%s/locked", sb_repo.buf);
  unlink_or_warn(sb.buf);
 }





 if (!ret && opts->checkout) {
  const char *hook = find_hook("post-checkout");
  if (hook) {
   const char *env[] = { "GIT_DIR", "GIT_WORK_TREE", ((void*)0) };
   cp.git_cmd = 0;
   cp.no_stdin = 1;
   cp.stdout_to_stderr = 1;
   cp.dir = path;
   cp.env = env;
   cp.argv = ((void*)0);
   cp.trace2_hook_name = "post-checkout";
   argv_array_pushl(&cp.args, absolute_path(hook),
      oid_to_hex(&null_oid),
      oid_to_hex(&commit->object.oid),
      "1", ((void*)0));
   ret = run_command(&cp);
  }
 }

 argv_array_clear(&child_env);
 strbuf_release(&sb);
 strbuf_release(&symref);
 strbuf_release(&sb_repo);
 strbuf_release(&sb_git);
 strbuf_release(&sb_name);
 return ret;
}
