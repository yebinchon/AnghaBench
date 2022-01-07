
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* next; int str; } ;
typedef TYPE_1__ strlst_t ;


 TYPE_1__* malloc (int) ;
 int out_of_memory () ;
 int strcmp (int ,char*) ;
 int strdup (char*) ;

void
add_string(strlst_t **listp, char *str)
{
 strlst_t *p1, *p2;



 for (p1 = ((void*)0), p2 = *listp; p2 != ((void*)0); p1 = p2, p2 = p2->next)
  if (!strcmp(p2->str, str))
   return;

 p2 = malloc(sizeof(strlst_t));
 if (p2) {
  p2->next = ((void*)0);
  p2->str = strdup(str);
     }
 if (!p2 || !p2->str)
  out_of_memory();

 if (p1 == ((void*)0))
  *listp = p2;
 else
  p1->next = p2;
}
