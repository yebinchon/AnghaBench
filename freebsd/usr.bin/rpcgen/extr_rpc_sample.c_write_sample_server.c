
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
struct TYPE_12__ {int res_type; int proc_name; struct TYPE_12__* next; } ;
typedef TYPE_4__ proc_list ;
struct TYPE_9__ {TYPE_3__* versions; } ;
struct TYPE_10__ {TYPE_1__ pr; } ;
struct TYPE_13__ {int def_name; TYPE_2__ def; } ;
typedef TYPE_5__ definition ;


 int RQSTP ;
 int f_print (int ,char*) ;
 int fout ;
 scalar_t__ mtflag ;
 int printarglist (TYPE_4__*,char*,int ,char*) ;
 int pvname (int ,int ) ;
 int pvname_svc (int ,int ) ;
 int return_type (TYPE_4__*) ;
 int streq (int ,char*) ;

__attribute__((used)) static void
write_sample_server(definition *def)
{
 version_list *vp;
 proc_list *proc;

 for (vp = def->def.pr.versions; vp != ((void*)0); vp = vp->next) {
  for (proc = vp->procs; proc != ((void*)0); proc = proc->next) {
   f_print(fout, "\n");
   if (!mtflag) {
    return_type(proc);
    f_print(fout, "*\n");
   } else
    f_print(fout, "bool_t\n");
   pvname_svc(proc->proc_name, vp->vers_num);
   printarglist(proc, "result", RQSTP, "struct svc_req *");

   f_print(fout, "{\n");
   if (!mtflag) {
    f_print(fout, "\tstatic ");
    if(!streq(proc->res_type, "void"))
     return_type(proc);
    else
     f_print(fout, "char *");

    f_print(fout, " result;\n");
   }
   else
    f_print(fout, "\tbool_t retval;\n");
   f_print(fout,
    "\n\t/*\n\t * insert server code here\n\t */\n\n");

   if (!mtflag)
    if(!streq(proc->res_type, "void"))
     f_print(fout, "\treturn (&result);\n}\n");
    else
     f_print(fout, "\treturn((void *) &result);\n}\n");
   else
    f_print(fout, "\treturn (retval);\n}\n");
  }

  if (mtflag) {
  f_print(fout, "\nint\n");
  pvname(def->def_name, vp->vers_num);
  f_print(fout,"_freeresult(SVCXPRT *transp, xdrproc_t xdr_result, caddr_t result)\n");
  f_print(fout, "{\n");
  f_print(fout, "\t(void) xdr_free(xdr_result, result);\n");
  f_print(fout,
   "\n\t/*\n\t * Insert additional freeing code here, if needed\n\t */\n");
  f_print(fout, "\n}\n");


 }
 }
}
