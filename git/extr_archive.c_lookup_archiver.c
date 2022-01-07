
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct archiver {int name; } ;


 struct archiver const** archivers ;
 int nr_archivers ;
 int strcmp (char const*,int ) ;

__attribute__((used)) static const struct archiver *lookup_archiver(const char *name)
{
 int i;

 if (!name)
  return ((void*)0);

 for (i = 0; i < nr_archivers; i++) {
  if (!strcmp(name, archivers[i]->name))
   return archivers[i];
 }
 return ((void*)0);
}
