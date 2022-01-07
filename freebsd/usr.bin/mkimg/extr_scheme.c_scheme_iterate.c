
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mkimg_scheme {struct mkimg_scheme* next; } ;


 struct mkimg_scheme* first ;

struct mkimg_scheme *
scheme_iterate(struct mkimg_scheme *s)
{

 return ((s == ((void*)0)) ? first : s->next);
}
