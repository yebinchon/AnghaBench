
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


struct TYPE_16__ {int vers_num; TYPE_7__* procs; struct TYPE_16__* next; } ;
typedef TYPE_6__ version_list ;
struct TYPE_15__ {TYPE_4__* decls; int argname; } ;
struct TYPE_17__ {int arg_num; char* res_prefix; int res_type; TYPE_5__ args; int proc_name; int proc_num; struct TYPE_17__* next; } ;
typedef TYPE_7__ proc_list ;
struct TYPE_11__ {TYPE_6__* versions; } ;
struct TYPE_12__ {TYPE_1__ pr; } ;
struct TYPE_18__ {int def_name; TYPE_2__ def; } ;
typedef TYPE_8__ definition ;
struct TYPE_13__ {char* prefix; int type; } ;
struct TYPE_14__ {TYPE_3__ decl; } ;


 int atoi (int ) ;
 int f_print (int ,char*,...) ;
 int fout ;
 int fputs (int ,int ) ;
 int locase (int ) ;
 scalar_t__ newstyle ;
 int nonfatalerrors ;
 int null_entry ;
 scalar_t__ nullproc (TYPE_7__*) ;
 int printit (char*,int ) ;
 int pvname (int ,int ) ;
 int pvname_svc (int ,int ) ;
 int s_print (char*,char*,int ,int ) ;
 int tbl_end ;
 int tbl_hdr ;
 int tbl_nproc ;
 int warnx (char*,char*) ;

__attribute__((used)) static void
write_table(definition *def)
{
 version_list *vp;
 proc_list *proc;
 int current;
 int expected;
 char progvers[100];
 int warning;

 for (vp = def->def.pr.versions; vp != ((void*)0); vp = vp->next) {
  warning = 0;
  s_print(progvers, "%s_%s",
      locase(def->def_name), vp->vers_num);

  f_print(fout, tbl_hdr, progvers);

  if (nullproc(vp->procs)) {
   expected = 0;
  } else {
   expected = 1;
   fputs(null_entry, fout);
  }
  for (proc = vp->procs; proc != ((void*)0); proc = proc->next) {
   current = atoi(proc->proc_num);
   if (current != expected++) {
    f_print(fout,
   "\n/*\n * WARNING: table out of order\n */\n");
    if (warning == 0) {
     warnx("WARNING %s table is out of order", progvers);
     warning = 1;
     nonfatalerrors = 1;
    }
    expected = current + 1;
   }
   f_print(fout, "\n\t(char *(*)())RPCGEN_ACTION(");


   if( !newstyle )
     pvname_svc(proc->proc_name, vp->vers_num);
   else {
     if( newstyle )
       f_print( fout, "_");
     pvname(proc->proc_name, vp->vers_num);
   }
   f_print(fout, "),\n");


   if( proc->arg_num > 1 )
     printit((char*) ((void*)0), proc->args.argname );
   else

     printit( proc->args.decls->decl.prefix,
      proc->args.decls->decl.type );

   printit(proc->res_prefix, proc->res_type);
  }


  fputs(tbl_end, fout);
  f_print(fout, tbl_nproc, progvers, progvers, progvers);
 }
}
