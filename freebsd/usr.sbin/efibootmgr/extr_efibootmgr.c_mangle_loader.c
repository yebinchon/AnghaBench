
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static char *
mangle_loader(char *loader)
{
 char *c;

 for (c = loader; *c; c++)
  if (*c == '/')
   *c = '\\';

 return loader;
}
