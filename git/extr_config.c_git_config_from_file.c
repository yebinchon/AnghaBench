
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int config_fn_t ;


 int git_config_from_file_with_options (int ,char const*,void*,int *) ;

int git_config_from_file(config_fn_t fn, const char *filename, void *data)
{
 return git_config_from_file_with_options(fn, filename, data, ((void*)0));
}
