
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_11__ {int old_type; } ;
struct TYPE_12__ {TYPE_1__ ty; } ;
struct TYPE_13__ {int def_kind; int def_name; TYPE_2__ def; } ;
typedef TYPE_3__ definition ;


 int DEF_CONST ;

 int DEF_PROGRAM ;



 int emit_enum (TYPE_3__*) ;
 int emit_program (TYPE_3__*) ;
 int emit_struct (TYPE_3__*) ;
 int emit_typedef (TYPE_3__*) ;
 int emit_union (TYPE_3__*) ;
 int print_header (TYPE_3__*) ;
 int print_trailer () ;
 scalar_t__ strcmp (int ,int ) ;

void
emit(definition *def)
{
 if (def->def_kind == DEF_CONST) {
  return;
 }
 if (def->def_kind == DEF_PROGRAM) {
  emit_program(def);
  return;
 }
 if (def->def_kind == 129) {






  if (strcmp(def->def.ty.old_type, def->def_name) == 0)
   return;
 }
 print_header(def);
 switch (def->def_kind) {
 case 128:
  emit_union(def);
  break;
 case 131:
  emit_enum(def);
  break;
 case 130:
  emit_struct(def);
  break;
 case 129:
  emit_typedef(def);
  break;

 default:
  break;
 }
 print_trailer();
}
