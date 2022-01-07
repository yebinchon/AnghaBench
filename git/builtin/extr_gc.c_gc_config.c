
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int aggressive_depth ;
 int aggressive_window ;
 int big_pack_threshold ;
 int detach_auto ;
 int gc_auto_pack_limit ;
 int gc_auto_threshold ;
 scalar_t__ gc_config_is_timestamp_never (char*) ;
 int gc_log_expire ;
 int git_config (int ,int *) ;
 int git_config_bool (char*,char const*) ;
 int git_config_get_bool (char*,int *) ;
 int git_config_get_expiry (char*,int *) ;
 int git_config_get_int (char*,int *) ;
 int git_config_get_ulong (char*,int *) ;
 int git_config_get_value (char*,char const**) ;
 int git_default_config ;
 int max_delta_cache_size ;
 int pack_refs ;
 int prune_expire ;
 scalar_t__ prune_reflogs ;
 int prune_worktrees_expire ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void gc_config(void)
{
 const char *value;

 if (!git_config_get_value("gc.packrefs", &value)) {
  if (value && !strcmp(value, "notbare"))
   pack_refs = -1;
  else
   pack_refs = git_config_bool("gc.packrefs", value);
 }

 if (gc_config_is_timestamp_never("gc.reflogexpire") &&
     gc_config_is_timestamp_never("gc.reflogexpireunreachable"))
  prune_reflogs = 0;

 git_config_get_int("gc.aggressivewindow", &aggressive_window);
 git_config_get_int("gc.aggressivedepth", &aggressive_depth);
 git_config_get_int("gc.auto", &gc_auto_threshold);
 git_config_get_int("gc.autopacklimit", &gc_auto_pack_limit);
 git_config_get_bool("gc.autodetach", &detach_auto);
 git_config_get_expiry("gc.pruneexpire", &prune_expire);
 git_config_get_expiry("gc.worktreepruneexpire", &prune_worktrees_expire);
 git_config_get_expiry("gc.logexpiry", &gc_log_expire);

 git_config_get_ulong("gc.bigpackthreshold", &big_pack_threshold);
 git_config_get_ulong("pack.deltacachesize", &max_delta_cache_size);

 git_config(git_default_config, ((void*)0));
}
