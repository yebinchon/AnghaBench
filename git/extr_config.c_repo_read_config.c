
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct repository {scalar_t__ config; int gitdir; int commondir; } ;
struct config_set {int dummy; } ;
struct config_options {int respect_includes; int git_dir; int commondir; int member_0; } ;


 int _ (char*) ;
 int config_set_callback ;
 scalar_t__ config_with_options (int ,scalar_t__,int *,struct config_options*) ;
 int die (int ) ;
 int git_configset_clear (scalar_t__) ;
 int git_configset_init (scalar_t__) ;
 scalar_t__ xcalloc (int,int) ;

__attribute__((used)) static void repo_read_config(struct repository *repo)
{
 struct config_options opts = { 0 };

 opts.respect_includes = 1;
 opts.commondir = repo->commondir;
 opts.git_dir = repo->gitdir;

 if (!repo->config)
  repo->config = xcalloc(1, sizeof(struct config_set));
 else
  git_configset_clear(repo->config);

 git_configset_init(repo->config);

 if (config_with_options(config_set_callback, repo->config, ((void*)0), &opts) < 0)
  die(_("unknown error occurred while reading the configuration files"));
}
