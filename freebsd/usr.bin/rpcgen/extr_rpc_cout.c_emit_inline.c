
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rel; int array_max; int name; int type; } ;
typedef TYPE_1__ declaration ;




 int emit_single_in_line (int,TYPE_1__*,int,int const) ;
 int f_print (int ,char*,...) ;
 int fout ;
 int tabify (int ,int) ;

__attribute__((used)) static void
emit_inline(int indent, declaration *decl, int flag)
{
 switch (decl->rel) {
 case 129 :
  emit_single_in_line(indent, decl, flag, 129);
  break;
 case 128 :
  tabify(fout, indent);
  f_print(fout, "{\n");
  tabify(fout, indent + 1);
  f_print(fout, "%s *genp;\n\n", decl->type);
  tabify(fout, indent + 1);
  f_print(fout,
   "for (i = 0, genp = objp->%s;\n", decl->name);
  tabify(fout, indent + 2);
  f_print(fout, "i < %s; i++) {\n", decl->array_max);
  emit_single_in_line(indent + 2, decl, flag, 128);
  tabify(fout, indent + 1);
  f_print(fout, "}\n");
  tabify(fout, indent);
  f_print(fout, "}\n");
  break;
 default:
  break;
 }
}
