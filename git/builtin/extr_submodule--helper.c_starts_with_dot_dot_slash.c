
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_dir_sep (char const) ;

__attribute__((used)) static int starts_with_dot_dot_slash(const char *str)
{
 return str[0] == '.' && str[1] == '.' && is_dir_sep(str[2]);
}
