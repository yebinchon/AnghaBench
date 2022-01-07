
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkimg_scheme {struct mkimg_scheme* next; } ;


 struct mkimg_scheme* first ;

void
scheme_register(struct mkimg_scheme *s)
{
 s->next = first;
 first = s;
}
