
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;

int
ng_path_parse(char *addr, char **nodep, char **pathp, char **hookp)
{
 char *node, *path, *hook;
 int k;




 for (path = addr; *path && *path != ':'; path++);
 if (*path) {
  node = addr;
  *path++ = '\0';


  if (!*node)
   return -1;


  if (strcmp(node, ".") != 0) {
   for (k = 0; node[k]; k++)
    if (node[k] == '.')
     return -1;
  }
 } else {
  node = ((void*)0);
  path = addr;
 }


 for (k = 0; path[k]; k++)
  if (path[k] == ':')
   return -1;


 for (k = 0; path[k]; k++)
  if (path[k] == '.' && path[k + 1] == '.')
   return -1;


 if (path[0] == '.')
  path++;
 if (*path && path[strlen(path) - 1] == '.')
  path[strlen(path) - 1] = 0;


 if (*path) {
  for (hook = path, k = 0; path[k]; k++)
   if (path[k] == '.') {
    hook = ((void*)0);
    break;
   }
 } else
  path = hook = ((void*)0);


 if (nodep)
  *nodep = node;
 if (pathp)
  *pathp = path;
 if (hookp)
  *hookp = hook;
 return (0);
}
