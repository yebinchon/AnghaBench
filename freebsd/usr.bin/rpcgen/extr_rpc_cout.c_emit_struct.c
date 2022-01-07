
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {TYPE_4__* decls; } ;
struct TYPE_11__ {TYPE_1__ st; } ;
struct TYPE_12__ {TYPE_2__ def; } ;
typedef TYPE_3__ definition ;
struct TYPE_15__ {scalar_t__ rel; int type; int * prefix; } ;
struct TYPE_13__ {TYPE_6__ decl; struct TYPE_13__* next; } ;
typedef TYPE_4__ decl_list ;
struct TYPE_14__ {scalar_t__ length; } ;
typedef TYPE_5__ bas_type ;


 int GET ;
 int PUT ;
 scalar_t__ REL_ALIAS ;
 scalar_t__ REL_VECTOR ;
 int f_print (int ,char*) ;
 TYPE_5__* find_type (int ) ;
 int fout ;
 int inline_size ;
 int inline_struct (TYPE_3__*,int) ;
 int print_stat (int,TYPE_6__*) ;
 scalar_t__ strcmp (int ,char*) ;

__attribute__((used)) static void
emit_struct(definition *def)
{
 decl_list *dl;
 int j, size, flag;
 bas_type *ptr;
 int can_inline;

 if (inline_size == 0) {

  for (dl = def->def.st.decls; dl != ((void*)0); dl = dl->next)
   print_stat(1, &dl->decl);
  return;
 }

 for (dl = def->def.st.decls; dl != ((void*)0); dl = dl->next)
  if (dl->decl.rel == REL_VECTOR &&
      strcmp(dl->decl.type, "opaque") != 0){
   f_print(fout, "\tint i;\n");
   break;
  }

 size = 0;
 can_inline = 0;



 for (dl = def->def.st.decls; dl != ((void*)0); dl = dl->next)
  if ((dl->decl.prefix == ((void*)0)) &&
      ((ptr = find_type(dl->decl.type)) != ((void*)0)) &&
      ((dl->decl.rel == REL_ALIAS)||
       (dl->decl.rel == REL_VECTOR))){
   if (dl->decl.rel == REL_ALIAS)
    size += ptr->length;
   else {
    can_inline = 1;
    break;
   }
  } else {
   if (size >= inline_size){
    can_inline = 1;
    break;
   }
   size = 0;
  }
 if (size >= inline_size)
  can_inline = 1;

 if (can_inline == 0){
  for (dl = def->def.st.decls; dl != ((void*)0); dl = dl->next)
   print_stat(1, &dl->decl);
  return;
 }

 flag = PUT;
 for (j = 0; j < 2; j++){
  inline_struct(def, flag);
  if (flag == PUT)
   flag = GET;
 }

 f_print(fout, "\t\treturn (TRUE);\n\t}\n\n");



 for (dl = def->def.st.decls; dl != ((void*)0); dl = dl->next)
  print_stat(1, &dl->decl);

}
