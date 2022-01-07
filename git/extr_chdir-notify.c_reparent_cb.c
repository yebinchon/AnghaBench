
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* reparent_relative_path (char const*,char const*,char*) ;
 int trace_printf_key (int *,char*,char const*,char*) ;
 int trace_setup_key ;

__attribute__((used)) static void reparent_cb(const char *name,
   const char *old_cwd,
   const char *new_cwd,
   void *data)
{
 char **path = data;
 char *tmp = *path;

 if (!tmp)
  return;

 *path = reparent_relative_path(old_cwd, new_cwd, tmp);
 free(tmp);

 if (name) {
  trace_printf_key(&trace_setup_key,
     "setup: reparent %s to '%s'",
     name, *path);
 }
}
