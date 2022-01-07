
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int argname; TYPE_3__* decls; } ;
struct TYPE_7__ {int res_type; int res_prefix; TYPE_1__ args; } ;
typedef TYPE_2__ proc_list ;
struct TYPE_9__ {int type; int prefix; } ;
struct TYPE_8__ {TYPE_5__ decl; struct TYPE_8__* next; } ;
typedef TYPE_3__ decl_list ;


 int f_print (int ,char*,...) ;
 int fout ;
 scalar_t__ mtflag ;
 int newstyle ;
 int pdeclaration (int ,TYPE_5__*,int ,char*) ;
 int ptype (int ,int ,int) ;
 scalar_t__ streq (int ,char*) ;

void
printarglist(proc_list *proc, const char *result, const char *addargname,
    const char *addargtype)
{

 decl_list *l;

 if (!newstyle) {

  f_print(fout, "(");
  ptype(proc->args.decls->decl.prefix,
        proc->args.decls->decl.type, 1);

  if (mtflag) {
   f_print(fout, "*argp, ");
   ptype(proc->res_prefix, proc->res_type, 1);
   f_print(fout, "*%s, %s%s)\n",
    result, addargtype, addargname);
  } else
   f_print(fout, "*argp, %s%s)\n", addargtype, addargname);
 } else if (streq(proc->args.decls->decl.type, "void")) {

  if (mtflag) {
   f_print(fout, "(");
   ptype(proc->res_prefix, proc->res_type, 1);
   f_print(fout, "*%s, %s%s)\n",
    result, addargtype, addargname);
  } else
   f_print(fout, "(%s%s)\n", addargtype, addargname);
 } else {

  f_print(fout, "(");
  for (l = proc->args.decls; l != ((void*)0); l = l->next) {
   pdeclaration(proc->args.argname, &l->decl, 0, ", ");
  }
  if (mtflag) {
   ptype(proc->res_prefix, proc->res_type, 1);
   f_print(fout, "*%s, ", result);

  }
  f_print(fout, "%s%s)\n", addargtype, addargname);
 }
}
