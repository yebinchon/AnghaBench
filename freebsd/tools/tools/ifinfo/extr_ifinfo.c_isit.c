
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IFNAMSIZ ;
 scalar_t__ strncmp (char*,char const*,int ) ;

__attribute__((used)) static int
isit(int argc, char **argv, const char *name)
{
 if (argc == 0)
  return 1;
 for (argc = 0; argv[argc]; argc++) {
  if (strncmp(argv[argc], name, IFNAMSIZ) == 0)
   return 1;
 }
 return 0;
}
