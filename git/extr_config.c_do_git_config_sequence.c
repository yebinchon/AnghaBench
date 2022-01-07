
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_options {int ignore_cmdline; int ignore_worktree; int ignore_repo; scalar_t__ system_gently; scalar_t__ git_dir; scalar_t__ commondir; } ;
typedef int config_fn_t ;


 int ACCESS_EACCES_OK ;
 int BUG (char*) ;
 int CONFIG_SCOPE_CMDLINE ;
 int CONFIG_SCOPE_GLOBAL ;
 int CONFIG_SCOPE_REPO ;
 int CONFIG_SCOPE_SYSTEM ;
 int CONFIG_SCOPE_UNKNOWN ;
 int R_OK ;
 int _ (char*) ;
 int access_or_die (char*,int ,int ) ;
 int current_parsing_scope ;
 int die (int ) ;
 char* expand_user_path (char*,int ) ;
 int free (char*) ;
 scalar_t__ git_config_from_file (int ,char*,void*) ;
 scalar_t__ git_config_from_parameters (int ,void*) ;
 scalar_t__ git_config_system () ;
 char* git_etc_gitconfig () ;
 char* git_pathdup (char*) ;
 char* mkpathdup (char*,scalar_t__) ;
 scalar_t__ repository_format_worktree_config ;
 char* xdg_config_home (char*) ;

__attribute__((used)) static int do_git_config_sequence(const struct config_options *opts,
      config_fn_t fn, void *data)
{
 int ret = 0;
 char *xdg_config = xdg_config_home("config");
 char *user_config = expand_user_path("~/.gitconfig", 0);
 char *repo_config;

 if (opts->commondir)
  repo_config = mkpathdup("%s/config", opts->commondir);
 else if (opts->git_dir)
  BUG("git_dir without commondir");
 else
  repo_config = ((void*)0);

 current_parsing_scope = CONFIG_SCOPE_SYSTEM;
 if (git_config_system() && !access_or_die(git_etc_gitconfig(), R_OK,
        opts->system_gently ?
        ACCESS_EACCES_OK : 0))
  ret += git_config_from_file(fn, git_etc_gitconfig(),
         data);

 current_parsing_scope = CONFIG_SCOPE_GLOBAL;
 if (xdg_config && !access_or_die(xdg_config, R_OK, ACCESS_EACCES_OK))
  ret += git_config_from_file(fn, xdg_config, data);

 if (user_config && !access_or_die(user_config, R_OK, ACCESS_EACCES_OK))
  ret += git_config_from_file(fn, user_config, data);

 current_parsing_scope = CONFIG_SCOPE_REPO;
 if (!opts->ignore_repo && repo_config &&
     !access_or_die(repo_config, R_OK, 0))
  ret += git_config_from_file(fn, repo_config, data);





 if (!opts->ignore_worktree && repository_format_worktree_config) {
  char *path = git_pathdup("config.worktree");
  if (!access_or_die(path, R_OK, 0))
   ret += git_config_from_file(fn, path, data);
  free(path);
 }

 current_parsing_scope = CONFIG_SCOPE_CMDLINE;
 if (!opts->ignore_cmdline && git_config_from_parameters(fn, data) < 0)
  die(_("unable to parse command-line config"));

 current_parsing_scope = CONFIG_SCOPE_UNKNOWN;
 free(xdg_config);
 free(user_config);
 free(repo_config);
 return ret;
}
