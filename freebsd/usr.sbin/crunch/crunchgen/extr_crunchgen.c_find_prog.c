
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ prog_t ;


 TYPE_1__* progs ;
 int strcmp (int ,char*) ;

prog_t *find_prog(char *str)
{
 prog_t *p;

 for (p = progs; p != ((void*)0); p = p->next)
  if (!strcmp(p->name, str))
   return p;

 return ((void*)0);
}
