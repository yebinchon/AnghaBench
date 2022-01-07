
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_5__ ;
typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_14__ {int vers_num; TYPE_4__* procs; int vers_name; struct TYPE_14__* next; } ;
typedef TYPE_3__ version_list ;
struct TYPE_15__ {int proc_num; int proc_name; struct TYPE_15__* next; } ;
typedef TYPE_4__ proc_list ;
struct TYPE_12__ {TYPE_3__* versions; int prog_num; } ;
struct TYPE_13__ {TYPE_1__ pr; } ;
struct TYPE_16__ {int def_name; TYPE_2__ def; } ;
typedef TYPE_5__ definition ;


 int define_printed (TYPE_4__*,TYPE_3__*) ;
 int f_print (int ,char*,...) ;
 int fout ;
 int locase (int ) ;
 int pargdef (TYPE_5__*) ;
 int pdispatch (int ,int ) ;
 int pfreeprocdef (int ,int ) ;
 int pprocdef (TYPE_4__*,TYPE_3__*,char*,int) ;
 int puldefine (int ,int ) ;
 scalar_t__ tblflag ;

__attribute__((used)) static void
pprogramdef(definition *def, int headeronly)
{
 version_list *vers;
 proc_list *proc;
 const char *ext;

 pargdef(def);

 puldefine(def->def_name, def->def.pr.prog_num);
 for (vers = def->def.pr.versions; vers != ((void*)0); vers = vers->next) {
  if (tblflag) {
   f_print(fout,
    "extern struct rpcgen_table %s_%s_table[];\n",
    locase(def->def_name), vers->vers_num);
   f_print(fout,
    "extern %s_%s_nproc;\n",
    locase(def->def_name), vers->vers_num);
  }
  puldefine(vers->vers_name, vers->vers_num);

  f_print(fout, "\n");
  ext = "extern  ";
  if (headeronly) {
   f_print(fout, "%s", ext);
   pdispatch(def->def_name, vers->vers_num);
  }
  for (proc = vers->procs; proc != ((void*)0); proc = proc->next) {
   if (!define_printed(proc, def->def.pr.versions)) {
    puldefine(proc->proc_name, proc->proc_num);
   }
   f_print(fout, "%s", ext);
   pprocdef(proc, vers, "CLIENT *", 0);
   f_print(fout, "%s", ext);
   pprocdef(proc, vers, "struct svc_req *", 1);
  }
  pfreeprocdef(def->def_name, vers->vers_num);
 }
}
