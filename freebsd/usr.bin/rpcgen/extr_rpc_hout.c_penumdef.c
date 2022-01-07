
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {char* assignment; struct TYPE_8__* next; int name; } ;
typedef TYPE_3__ enumval_list ;
struct TYPE_6__ {TYPE_3__* vals; } ;
struct TYPE_7__ {TYPE_1__ en; } ;
struct TYPE_9__ {char* def_name; TYPE_2__ def; } ;
typedef TYPE_4__ definition ;


 int f_print (int ,char*,...) ;
 int fout ;

__attribute__((used)) static void
penumdef(definition *def)
{
 const char *name = def->def_name;
 enumval_list *l;
 const char *last = ((void*)0);
 int count = 0;

 f_print(fout, "enum %s {\n", name);
 for (l = def->def.en.vals; l != ((void*)0); l = l->next) {
  f_print(fout, "\t%s", l->name);
  if (l->assignment) {
   f_print(fout, " = %s", l->assignment);
   last = l->assignment;
   count = 1;
  } else {
   if (last == ((void*)0)) {
    f_print(fout, " = %d", count++);
   } else {
    f_print(fout, " = %s + %d", last, count++);
   }
  }
  if (l->next)
   f_print(fout, ",\n");
  else
   f_print(fout, "\n");
 }
 f_print(fout, "};\n");
 f_print(fout, "typedef enum %s %s;\n", name, name);
}
