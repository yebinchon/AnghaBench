
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct submodule {int dummy; } ;
struct strbuf {int dummy; } ;
struct repository {int gitdir; } ;


 int BUG (char*) ;
 struct strbuf STRBUF_INIT ;
 int _ (char*) ;
 char* absolute_pathdup (char const*) ;
 int die (int ,char const*) ;
 int free (char*) ;
 int git_config_set_in_file (char*,char*,char const*) ;
 int null_oid ;
 char* relative_path (char*,int ,struct strbuf*) ;
 int repo_config_get_string (struct repository*,char*,char**) ;
 char* repo_git_path (struct repository*,char*) ;
 scalar_t__ repo_submodule_init (struct repository*,int ,struct submodule const*) ;
 int strbuf_release (struct strbuf*) ;
 struct submodule* submodule_from_path (int ,int *,char const*) ;
 int the_repository ;

__attribute__((used)) static int ensure_core_worktree(int argc, const char **argv, const char *prefix)
{
 const struct submodule *sub;
 const char *path;
 char *cw;
 struct repository subrepo;

 if (argc != 2)
  BUG("submodule--helper ensure-core-worktree <path>");

 path = argv[1];

 sub = submodule_from_path(the_repository, &null_oid, path);
 if (!sub)
  BUG("We could get the submodule handle before?");

 if (repo_submodule_init(&subrepo, the_repository, sub))
  die(_("could not get a repository handle for submodule '%s'"), path);

 if (!repo_config_get_string(&subrepo, "core.worktree", &cw)) {
  char *cfg_file, *abs_path;
  const char *rel_path;
  struct strbuf sb = STRBUF_INIT;

  cfg_file = repo_git_path(&subrepo, "config");

  abs_path = absolute_pathdup(path);
  rel_path = relative_path(abs_path, subrepo.gitdir, &sb);

  git_config_set_in_file(cfg_file, "core.worktree", rel_path);

  free(cfg_file);
  free(abs_path);
  strbuf_release(&sb);
 }

 return 0;
}
