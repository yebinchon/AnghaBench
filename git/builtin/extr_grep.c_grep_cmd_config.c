
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HAVE_THREADS ;
 int _ (char*) ;
 int die (int ,int,char const*) ;
 scalar_t__ git_color_default_config (char const*,char const*,void*) ;
 int git_config_bool (char const*,char const*) ;
 int git_config_int (char const*,char const*) ;
 int grep_config (char const*,char const*,void*) ;
 int num_threads ;
 int recurse_submodules ;
 int strcmp (char const*,char*) ;
 int warning (int ,char const*) ;

__attribute__((used)) static int grep_cmd_config(const char *var, const char *value, void *cb)
{
 int st = grep_config(var, value, cb);
 if (git_color_default_config(var, value, cb) < 0)
  st = -1;

 if (!strcmp(var, "grep.threads")) {
  num_threads = git_config_int(var, value);
  if (num_threads < 0)
   die(_("invalid number of threads specified (%d) for %s"),
       num_threads, var);
  else if (!HAVE_THREADS && num_threads > 1) {





   warning(_("no threads support, ignoring %s"), var);
   num_threads = 1;
  }
 }

 if (!strcmp(var, "submodule.recurse"))
  recurse_submodules = git_config_bool(var, value);

 return st;
}
