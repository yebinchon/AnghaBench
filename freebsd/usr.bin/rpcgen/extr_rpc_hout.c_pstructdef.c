
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* decls; } ;
struct TYPE_7__ {TYPE_1__ st; } ;
struct TYPE_8__ {char* def_name; TYPE_2__ def; } ;
typedef TYPE_3__ definition ;
struct TYPE_9__ {int decl; struct TYPE_9__* next; } ;
typedef TYPE_4__ decl_list ;


 int f_print (int ,char*,...) ;
 int fout ;
 int pdeclaration (char const*,int *,int,char*) ;

__attribute__((used)) static void
pstructdef(definition *def)
{
 decl_list *l;
 const char *name = def->def_name;

 f_print(fout, "struct %s {\n", name);
 for (l = def->def.st.decls; l != ((void*)0); l = l->next) {
  pdeclaration(name, &l->decl, 1, ";\n");
 }
 f_print(fout, "};\n");
 f_print(fout, "typedef struct %s %s;\n", name, name);
}
