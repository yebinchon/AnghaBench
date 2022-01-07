
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_11__ {char const* type; char const* name; } ;
struct TYPE_8__ {TYPE_4__* default_decl; TYPE_5__* cases; TYPE_4__ enum_decl; } ;
struct TYPE_9__ {TYPE_1__ un; } ;
struct TYPE_10__ {char* def_name; TYPE_2__ def; } ;
typedef TYPE_3__ definition ;
typedef TYPE_4__ declaration ;
struct TYPE_12__ {scalar_t__ contflag; TYPE_4__ case_decl; struct TYPE_12__* next; } ;
typedef TYPE_5__ case_list ;


 int f_print (int ,char*,...) ;
 int fout ;
 int pdeclaration (char const*,TYPE_4__*,int,char*) ;
 scalar_t__ streq (char const*,char*) ;

__attribute__((used)) static void
puniondef(definition *def)
{
 case_list *l;
 const char *name = def->def_name;
 declaration *decl;

 f_print(fout, "struct %s {\n", name);
 decl = &def->def.un.enum_decl;
 if (streq(decl->type, "bool")) {
  f_print(fout, "\tbool_t %s;\n", decl->name);
 } else {
  f_print(fout, "\t%s %s;\n", decl->type, decl->name);
 }
 f_print(fout, "\tunion {\n");
 for (l = def->def.un.cases; l != ((void*)0); l = l->next) {
     if (l->contflag == 0)
  pdeclaration(name, &l->case_decl, 2, ";\n");
 }
 decl = def->def.un.default_decl;
 if (decl && !streq(decl->type, "void")) {
  pdeclaration(name, decl, 2, ";\n");
 }
 f_print(fout, "\t} %s_u;\n", name);
 f_print(fout, "};\n");
 f_print(fout, "typedef struct %s %s;\n", name, name);
}
