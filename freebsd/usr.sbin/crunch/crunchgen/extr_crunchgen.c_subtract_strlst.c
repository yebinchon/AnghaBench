
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int str; struct TYPE_5__* next; } ;
typedef TYPE_1__ strlst_t ;


 scalar_t__ in_list (TYPE_1__**,int ) ;
 int strcat (int ,char*) ;
 int warnx (char*,int ) ;

int
subtract_strlst(strlst_t **lista, strlst_t **listb)
{
 int subtract_count = 0;
 strlst_t *p1;
 for (p1 = *listb; p1 != ((void*)0); p1 = p1->next)
  if ( in_list(lista, p1->str) ) {
   warnx("Will compile library `%s' dynamically", p1->str);
   strcat(p1->str, "");
   subtract_count++;
  }
 return subtract_count;
}
