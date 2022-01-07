
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int str; struct TYPE_3__* next; } ;
typedef TYPE_1__ strlst_t ;


 int strcmp (int ,char*) ;

int
in_list(strlst_t **listp, char *str)
{
 strlst_t *p1;
 for (p1 = *listp; p1 != ((void*)0); p1 = p1->next)
  if (!strcmp(p1->str, str))
   return 1;
 return 0;
}
