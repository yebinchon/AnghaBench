
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char const*,char const*) ;
 int strlen (char const*) ;

__attribute__((used)) static int match_extension(const char *filename, const char *ext)
{
 int prefixlen = strlen(filename) - strlen(ext);






 if (prefixlen < 2 || filename[prefixlen - 1] != '.')
  return 0;
 return !strcmp(filename + prefixlen, ext);
}
