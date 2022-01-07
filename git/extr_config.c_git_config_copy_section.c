
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_copy_section_in_file (int *,char const*,char const*) ;

int git_config_copy_section(const char *old_name, const char *new_name)
{
 return git_config_copy_section_in_file(((void*)0), old_name, new_name);
}
