
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int name; } ;
typedef TYPE_1__ bas_type ;


 scalar_t__ strcmp (int ,char const*) ;
 TYPE_1__* typ_list_h ;

bas_type *
find_type(const char *type)
{
 bas_type * ptr;

 ptr = typ_list_h;
 while (ptr != ((void*)0))
 {
  if (strcmp(ptr->name, type) == 0)
   return (ptr);
  else
   ptr = ptr->next;
 }
 return (((void*)0));
}
