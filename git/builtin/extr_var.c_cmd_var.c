
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config (int ,int *) ;
 int git_default_config ;
 int list_vars () ;
 int printf (char*,char const*) ;
 char* read_var (char const*) ;
 int show_config ;
 scalar_t__ strcmp (char const*,char*) ;
 int usage (int ) ;
 int var_usage ;

int cmd_var(int argc, const char **argv, const char *prefix)
{
 const char *val = ((void*)0);
 if (argc != 2)
  usage(var_usage);

 if (strcmp(argv[1], "-l") == 0) {
  git_config(show_config, ((void*)0));
  list_vars();
  return 0;
 }
 git_config(git_default_config, ((void*)0));
 val = read_var(argv[1]);
 if (!val)
  usage(var_usage);

 printf("%s\n", val);

 return 0;
}
