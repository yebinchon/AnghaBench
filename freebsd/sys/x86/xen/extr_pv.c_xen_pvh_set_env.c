
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ kern_setenv (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;
 int xc_printf (char*,char*,char*) ;

__attribute__((used)) static void
xen_pvh_set_env(char *env, bool (*filter)(const char *))
{
 char *option;

 if (env == ((void*)0))
  return;

 option = env;
 while (*option != 0) {
  char *value;

  if (filter != ((void*)0) && filter(option)) {
   option += strlen(option) + 1;
   continue;
  }

  value = option;
  option = strsep(&value, "=");
  if (kern_setenv(option, value) != 0)
   xc_printf("unable to add kenv %s=%s\n", option, value);
  option = value + strlen(value) + 1;
 }
}
