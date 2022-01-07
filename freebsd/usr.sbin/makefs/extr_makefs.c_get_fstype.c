
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * type; } ;
typedef TYPE_1__ fstype_t ;


 TYPE_1__* fstypes ;
 scalar_t__ strcmp (int *,char const*) ;

__attribute__((used)) static fstype_t *
get_fstype(const char *type)
{
 int i;

 for (i = 0; fstypes[i].type != ((void*)0); i++)
  if (strcmp(fstypes[i].type, type) == 0)
   return (&fstypes[i]);
 return (((void*)0));
}
