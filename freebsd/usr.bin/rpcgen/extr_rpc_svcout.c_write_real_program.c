
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_7__ ;
typedef struct TYPE_16__ TYPE_6__ ;
typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


struct TYPE_15__ {int vers_num; TYPE_6__* procs; struct TYPE_15__* next; } ;
typedef TYPE_5__ version_list ;
struct TYPE_13__ {TYPE_8__* decls; int argname; } ;
struct TYPE_16__ {int arg_num; TYPE_3__ args; int proc_name; struct TYPE_16__* next; } ;
typedef TYPE_6__ proc_list ;
struct TYPE_11__ {TYPE_5__* versions; } ;
struct TYPE_12__ {TYPE_1__ pr; } ;
struct TYPE_17__ {TYPE_2__ def; } ;
typedef TYPE_7__ definition ;
struct TYPE_14__ {int name; int type; int prefix; } ;
struct TYPE_18__ {TYPE_4__ decl; struct TYPE_18__* next; } ;
typedef TYPE_8__ decl_list ;


 int RESULT ;
 int RQSTP ;
 int f_print (int ,char*,...) ;
 int fout ;
 int fputs (int ,int ) ;
 int internal_proctype (TYPE_6__*) ;
 scalar_t__ mtflag ;
 int newstyle ;
 int ptype (int ,int ,int ) ;
 int pvname (int ,int ) ;
 int pvname_svc (int ,int ) ;
 int streq (int ,char*) ;

__attribute__((used)) static void
write_real_program(definition *def)
{
 version_list *vp;
 proc_list *proc;
 decl_list *l;

 if (!newstyle) return;
 for (vp = def->def.pr.versions; vp != ((void*)0); vp = vp->next) {
  for (proc = vp->procs; proc != ((void*)0); proc = proc->next) {
   f_print(fout, "\n");
   if (!mtflag)
    internal_proctype(proc);
   else
    f_print(fout, "int");
   f_print(fout, "\n_");
   pvname(proc->proc_name, vp->vers_num);
   f_print(fout, "(");

   if (proc->arg_num > 1)
    fputs(proc->args.argname, fout);
   else
    ptype(proc->args.decls->decl.prefix,
          proc->args.decls->decl.type, 0);
   if (mtflag) {
    f_print(fout, " *argp, void *%s, struct svc_req *%s)\n",
     RESULT, RQSTP);


   }
   else
    f_print(fout, " *argp, struct svc_req *%s)\n",
     RQSTP);

   f_print(fout, "{\n");
   f_print(fout, "\treturn (");
   pvname_svc(proc->proc_name, vp->vers_num);
   f_print(fout, "(");
   if (proc->arg_num < 2) {
    if (!streq(proc->args.decls->decl.type, "void"))
     f_print(fout, "*argp, ");
   } else {
    for (l = proc->args.decls; l != ((void*)0);
         l = l->next)
     f_print(fout, "argp->%s, ",
      l->decl.name);
   }
   if (mtflag)
    f_print(fout, "%s, ",RESULT);
   f_print(fout, "%s));\n}\n", RQSTP);
  }
 }
}
