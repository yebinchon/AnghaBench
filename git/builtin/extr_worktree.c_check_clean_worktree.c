
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct worktree {int path; } ;
struct child_process {int git_cmd; int out; int dir; int env; int args; } ;
struct argv_array {int argv; } ;
typedef int cp ;
typedef int buf ;


 struct argv_array ARGV_ARRAY_INIT ;
 int GIT_DIR_ENVIRONMENT ;
 int GIT_WORK_TREE_ENVIRONMENT ;
 int _ (char*) ;
 int argv_array_pushf (struct argv_array*,char*,int ,int ) ;
 int argv_array_pushl (int *,char*,char*,char*,int *) ;
 int close (int) ;
 int die (int ,char const*) ;
 int die_errno (int ,char const*,...) ;
 int finish_command (struct child_process*) ;
 int memset (struct child_process*,int ,int) ;
 int start_command (struct child_process*) ;
 int validate_no_submodules (struct worktree*) ;
 int xread (int,char*,int) ;

__attribute__((used)) static void check_clean_worktree(struct worktree *wt,
     const char *original_path)
{
 struct argv_array child_env = ARGV_ARRAY_INIT;
 struct child_process cp;
 char buf[1];
 int ret;





 validate_no_submodules(wt);

 argv_array_pushf(&child_env, "%s=%s/.git",
    GIT_DIR_ENVIRONMENT, wt->path);
 argv_array_pushf(&child_env, "%s=%s",
    GIT_WORK_TREE_ENVIRONMENT, wt->path);
 memset(&cp, 0, sizeof(cp));
 argv_array_pushl(&cp.args, "status",
    "--porcelain", "--ignore-submodules=none",
    ((void*)0));
 cp.env = child_env.argv;
 cp.git_cmd = 1;
 cp.dir = wt->path;
 cp.out = -1;
 ret = start_command(&cp);
 if (ret)
  die_errno(_("failed to run 'git status' on '%s'"),
     original_path);
 ret = xread(cp.out, buf, sizeof(buf));
 if (ret)
  die(_("'%s' contains modified or untracked files, use --force to delete it"),
      original_path);
 close(cp.out);
 ret = finish_command(&cp);
 if (ret)
  die_errno(_("failed to run 'git status' on '%s', code %d"),
     original_path, ret);
}
