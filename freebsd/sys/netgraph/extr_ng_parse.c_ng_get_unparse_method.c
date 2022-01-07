
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_parse_type {int * unparse; struct ng_parse_type* supertype; } ;
typedef int ng_unparse_t ;



__attribute__((used)) static ng_unparse_t *
ng_get_unparse_method(const struct ng_parse_type *t)
{
 while (t != ((void*)0) && t->unparse == ((void*)0))
  t = t->supertype;
 return (t ? t->unparse : ((void*)0));
}
