
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_parse_type {int * getDefault; struct ng_parse_type* supertype; } ;
typedef int ng_getDefault_t ;



__attribute__((used)) static ng_getDefault_t *
ng_get_getDefault_method(const struct ng_parse_type *t)
{
 while (t != ((void*)0) && t->getDefault == ((void*)0))
  t = t->supertype;
 return (t ? t->getDefault : ((void*)0));
}
