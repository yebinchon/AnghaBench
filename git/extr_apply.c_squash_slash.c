
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *squash_slash(char *name)
{
 int i = 0, j = 0;

 if (!name)
  return ((void*)0);

 while (name[i]) {
  if ((name[j++] = name[i++]) == '/')
   while (name[i] == '/')
    i++;
 }
 name[j] = '\0';
 return name;
}
