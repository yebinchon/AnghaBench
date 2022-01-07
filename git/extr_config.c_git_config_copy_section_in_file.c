
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int git_config_copy_or_rename_section_in_file (char const*,char const*,char const*,int) ;

int git_config_copy_section_in_file(const char *config_filename,
          const char *old_name, const char *new_name)
{
 return git_config_copy_or_rename_section_in_file(config_filename,
      old_name, new_name, 1);
}
