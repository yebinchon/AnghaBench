
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct config_set {int dummy; } ;


 int config_set_callback ;
 int git_config_from_file (int ,char const*,struct config_set*) ;

int git_configset_add_file(struct config_set *cs, const char *filename)
{
 return git_config_from_file(config_set_callback, filename, cs);
}
