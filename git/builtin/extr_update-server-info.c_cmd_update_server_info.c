
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int N_ (char*) ;
 struct option OPT_END () ;
 struct option OPT__FORCE (int*,int ,int ) ;
 int git_config (int ,int *) ;
 int git_default_config ;
 int parse_options (int,char const**,char const*,struct option*,int ,int ) ;
 int update_server_info (int) ;
 int update_server_info_usage ;
 int usage_with_options (int ,struct option*) ;

int cmd_update_server_info(int argc, const char **argv, const char *prefix)
{
 int force = 0;
 struct option options[] = {
  OPT__FORCE(&force, N_("update the info files from scratch"), 0),
  OPT_END()
 };

 git_config(git_default_config, ((void*)0));
 argc = parse_options(argc, argv, prefix, options,
        update_server_info_usage, 0);
 if (argc > 0)
  usage_with_options(update_server_info_usage, options);

 return !!update_server_info(force);
}
