
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_nvram_data {int dummy; } ;


 char* bhnd_nvram_data_next (struct bhnd_nvram_data*,void**) ;
 scalar_t__ strcmp (char const*,char const*) ;

void *
bhnd_nvram_data_generic_find(struct bhnd_nvram_data *nv, const char *name)
{
 const char *next;
 void *cookiep;

 cookiep = ((void*)0);
 while ((next = bhnd_nvram_data_next(nv, &cookiep))) {
  if (strcmp(name, next) == 0)
   return (cookiep);
 }


 return (((void*)0));
}
