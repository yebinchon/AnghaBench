
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {TYPE_4__* decls; } ;
struct TYPE_8__ {int arg_num; int res_type; int res_prefix; TYPE_1__ args; } ;
typedef TYPE_3__ proc_list ;
struct TYPE_7__ {int type; int prefix; } ;
struct TYPE_9__ {TYPE_2__ decl; struct TYPE_9__* next; } ;
typedef TYPE_4__ decl_list ;


 int f_print (int ,char*,...) ;
 int fout ;
 scalar_t__ mtflag ;
 scalar_t__ newstyle ;
 int ptype (int ,int ,int) ;
 scalar_t__ streq (int ,char*) ;

__attribute__((used)) static void
parglist(proc_list *proc, const char *addargtype)
{
 decl_list *dl;

 f_print(fout, "(");
 if (proc->arg_num < 2 && newstyle &&
     streq(proc->args.decls->decl.type, "void")) {

 }
 else {
  for (dl = proc->args.decls; dl != ((void*)0); dl = dl->next) {
   ptype(dl->decl.prefix, dl->decl.type, 1);
   if (!newstyle)
    f_print(fout, "*");

   f_print(fout, ", ");
  }
 }

 if (mtflag) {
  ptype(proc->res_prefix, proc->res_type, 1);
  f_print(fout, "*, ");
 }

 f_print(fout, "%s);\n", addargtype);

}
