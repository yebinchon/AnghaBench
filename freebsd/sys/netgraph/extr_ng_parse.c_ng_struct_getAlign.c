
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_parse_type {struct ng_parse_struct_field* info; } ;
struct ng_parse_struct_field {int type; int * name; } ;


 int ALIGNMENT (int ) ;

__attribute__((used)) static int
ng_struct_getAlign(const struct ng_parse_type *type)
{
 const struct ng_parse_struct_field *field;
 int align = 0;

 for (field = type->info; field->name != ((void*)0); field++) {
  int falign = ALIGNMENT(field->type);

  if (falign > align)
   align = falign;
 }
 return align;
}
