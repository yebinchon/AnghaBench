
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_options {int respect_includes; int ignore_repo; int ignore_worktree; int ignore_cmdline; int system_gently; int member_0; } ;
typedef int config_fn_t ;


 int config_with_options (int ,void*,int *,struct config_options*) ;

void read_very_early_config(config_fn_t cb, void *data)
{
 struct config_options opts = { 0 };

 opts.respect_includes = 1;
 opts.ignore_repo = 1;
 opts.ignore_worktree = 1;
 opts.ignore_cmdline = 1;
 opts.system_gently = 1;

 config_with_options(cb, data, ((void*)0), &opts);
}
