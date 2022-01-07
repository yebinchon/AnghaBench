
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int generate_id_list (int) ;
 int git_config (int ,int*) ;
 int git_patch_id_config ;
 int patch_id_usage ;
 int strcmp (char const*,char*) ;
 int usage (int ) ;

int cmd_patch_id(int argc, const char **argv, const char *prefix)
{
 int stable = -1;

 git_config(git_patch_id_config, &stable);


 if (stable < 0)
  stable = 0;

 if (argc == 2 && !strcmp(argv[1], "--stable"))
  stable = 1;
 else if (argc == 2 && !strcmp(argv[1], "--unstable"))
  stable = 0;
 else if (argc != 1)
  usage(patch_id_usage);

 generate_id_list(stable);
 return 0;
}
