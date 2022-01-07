
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_parse_type {int * parse; struct ng_parse_type* supertype; } ;
typedef int ng_parse_t ;



__attribute__((used)) static ng_parse_t *
ng_get_parse_method(const struct ng_parse_type *t)
{
 while (t != ((void*)0) && t->parse == ((void*)0))
  t = t->supertype;
 return (t ? t->parse : ((void*)0));
}
