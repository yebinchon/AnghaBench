
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ng_parse_type {struct ng_parse_struct_field* info; } ;
struct ng_parse_struct_field {int alignment; } ;
typedef enum comptype { ____Placeholder_comptype } comptype ;


 int ALIGNMENT (struct ng_parse_type const* const) ;
 int CT_STRUCT ;
 struct ng_parse_type* ng_get_composite_etype (struct ng_parse_type const*,int,int) ;

__attribute__((used)) static int
ng_parse_get_elem_pad(const struct ng_parse_type *type,
 int index, enum comptype ctype, int posn)
{
 const struct ng_parse_type *const
     etype = ng_get_composite_etype(type, index, ctype);
 int align;


 align = ALIGNMENT(etype);
 if (ctype == CT_STRUCT) {
  const struct ng_parse_struct_field *const fields = type->info;

  if (fields[index].alignment != 0)
   align = fields[index].alignment;
 }


 return (align ? (align - (posn % align)) % align : 0);
}
