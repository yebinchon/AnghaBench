
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_dir_sep (char) ;
 int strlen (char*) ;

__attribute__((used)) static void strip_trailing_slashes(char *dir)
{
 char *end = dir + strlen(dir);

 while (dir < end - 1 && is_dir_sep(end[-1]))
  end--;
 *end = '\0';
}
