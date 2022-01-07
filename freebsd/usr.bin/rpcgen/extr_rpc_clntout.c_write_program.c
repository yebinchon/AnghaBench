
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_11__ {int vers_num; TYPE_4__* procs; struct TYPE_11__* next; } ;
typedef TYPE_3__ version_list ;
struct TYPE_12__ {int proc_name; int res_type; int res_prefix; struct TYPE_12__* next; } ;
typedef TYPE_4__ proc_list ;
struct TYPE_9__ {TYPE_3__* versions; } ;
struct TYPE_10__ {TYPE_1__ pr; } ;
struct TYPE_13__ {TYPE_2__ def; } ;
typedef TYPE_5__ definition ;


 int RESULT ;
 int f_print (int ,char*) ;
 int fout ;
 scalar_t__ mtflag ;
 int printarglist (TYPE_4__*,int ,char*,char*) ;
 int printbody (TYPE_4__*) ;
 int ptype (int ,int ,int) ;
 int pvname (int ,int ) ;

__attribute__((used)) static void
write_program(definition *def)
{
 version_list *vp;
 proc_list *proc;

 for (vp = def->def.pr.versions; vp != ((void*)0); vp = vp->next) {
  for (proc = vp->procs; proc != ((void*)0); proc = proc->next) {
   f_print(fout, "\n");
   if (mtflag == 0) {
    ptype(proc->res_prefix, proc->res_type, 1);
    f_print(fout, "*\n");
    pvname(proc->proc_name, vp->vers_num);
    printarglist(proc, RESULT, "clnt", "CLIENT *");
   } else {
    f_print(fout, "enum clnt_stat \n");
    pvname(proc->proc_name, vp->vers_num);
    printarglist(proc, RESULT, "clnt", "CLIENT *");

   }
   f_print(fout, "{\n");
   printbody(proc);

   f_print(fout, "}\n");
  }
 }
}
