
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ relation ;
struct TYPE_3__ {char* name; int type; } ;
typedef TYPE_1__ declaration ;


 int PUT ;
 scalar_t__ REL_ALIAS ;
 int f_print (int ,char*,...) ;
 int fout ;
 int free (char*) ;
 scalar_t__ strcmp (char*,char*) ;
 char* strdup (char*) ;
 int tabify (int ,int) ;
 char* upcase (int ) ;

__attribute__((used)) static void
emit_single_in_line(int indent, declaration *decl, int flag, relation rel)
{
 char *upp_case;

 tabify(fout, indent);
 if (flag == PUT)
  f_print(fout, "IXDR_PUT_");
 else
  if (rel == REL_ALIAS)
   f_print(fout, "objp->%s = IXDR_GET_", decl->name);
  else
   f_print(fout, "*genp++ = IXDR_GET_");

 upp_case = upcase(decl->type);


 if (strcmp(upp_case, "INT") == 0)
 {
  free(upp_case);
  upp_case = strdup("LONG");
 }

 if (strcmp(upp_case, "U_INT") == 0)
 {
  free(upp_case);
  upp_case = strdup("U_LONG");
 }
 if (flag == PUT)
  if (rel == REL_ALIAS)
   f_print(fout,
    "%s(buf, objp->%s);\n", upp_case, decl->name);
  else
   f_print(fout, "%s(buf, *genp++);\n", upp_case);

 else
  f_print(fout, "%s(buf);\n", upp_case);
 free(upp_case);
}
