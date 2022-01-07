
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* git_attributes_file ;
 char* xdg_config_home (char*) ;

__attribute__((used)) static const char *get_home_gitattributes(void)
{
 if (!git_attributes_file)
  git_attributes_file = xdg_config_home("attributes");

 return git_attributes_file;
}
