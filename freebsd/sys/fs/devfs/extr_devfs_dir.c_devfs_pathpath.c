
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
devfs_pathpath(const char *p1, const char *p2)
{

 for (;;p1++, p2++) {
  if (*p1 != *p2) {
   if (*p1 == '/' && *p2 == '\0')
    return (1);
   else
    return (0);
  } else if (*p1 == '\0')
   return (1);
 }

}
