
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char*) ;

__attribute__((used)) static int
vfs_isopt_rw(const char *opt)
{

 if (strcmp(opt, "rw") == 0 || strcmp(opt, "noro") == 0)
  return (1);
 return (0);
}
