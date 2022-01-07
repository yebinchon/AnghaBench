
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {char* argname; TYPE_4__* decls; } ;
struct TYPE_8__ {int arg_num; char* proc_name; int res_type; TYPE_2__ args; int res_prefix; } ;
typedef TYPE_3__ proc_list ;
struct TYPE_6__ {char* name; int type; } ;
struct TYPE_9__ {TYPE_1__ decl; struct TYPE_9__* next; } ;
typedef TYPE_4__ decl_list ;
typedef int bool_t ;


 char* RESULT ;
 char* ampr (int ) ;
 int f_print (int ,char*,...) ;
 int fout ;
 scalar_t__ mtflag ;
 scalar_t__ newstyle ;
 int ptype (int ,int ,int ) ;
 scalar_t__ streq (int ,char*) ;
 int stringfix (int ) ;

__attribute__((used)) static void
printbody(proc_list *proc)
{
 decl_list *l;
 bool_t args2 = (proc->arg_num > 1);







 if (newstyle && args2) {
  f_print(fout, "\t%s", proc->args.argname);
  f_print(fout, " arg;\n");
 }
 if (!mtflag) {
  f_print(fout, "\tstatic ");
  if (streq(proc->res_type, "void")) {
   f_print(fout, "char ");
  } else {
   ptype(proc->res_prefix, proc->res_type, 0);
  }
  f_print(fout, "%s;\n", RESULT);
  f_print(fout, "\n");
  f_print(fout, "\tmemset((char *)%s%s, 0, sizeof (%s));\n",
   ampr(proc->res_type), RESULT, RESULT);

 }
 if (newstyle && !args2 &&
     (streq(proc->args.decls->decl.type, "void"))) {


  if (mtflag)
   f_print(fout, "\t return ");
  else
   f_print(fout, "\t if ");

  f_print(fout,
   "(clnt_call(clnt, %s,\n\t\t(xdrproc_t) xdr_void, ",
   proc->proc_name);
  f_print(fout,
   "(caddr_t) NULL,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,",
   stringfix(proc->res_type), (mtflag)?"":ampr(proc->res_type),
   RESULT);

  if (mtflag)
   f_print(fout, "\n\t\tTIMEOUT));\n");
  else
   f_print(fout, "\n\t\tTIMEOUT) != RPC_SUCCESS) {\n");

 } else if (newstyle && args2) {




  for (l = proc->args.decls; l != ((void*)0); l = l->next) {
   f_print(fout, "\targ.%s = %s;\n",
    l->decl.name, l->decl.name);
  }
  if (mtflag)
   f_print(fout, "\treturn ");
  else
   f_print(fout, "\tif ");
  f_print(fout,
   "(clnt_call(clnt, %s,\n\t\t(xdrproc_t) xdr_%s",
   proc->proc_name,proc->args.argname);
  f_print(fout,
   ", (caddr_t) &arg,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,",
   stringfix(proc->res_type), (mtflag)?"":ampr(proc->res_type),
   RESULT);
  if (mtflag)
   f_print(fout, "\n\t\tTIMEOUT));\n");
  else
   f_print(fout, "\n\t\tTIMEOUT) != RPC_SUCCESS) {\n");
 } else {
  if (!mtflag)
   f_print(fout,
   "\tif (clnt_call(clnt, %s,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,\n\t\tTIMEOUT) != RPC_SUCCESS) {\n",
   proc->proc_name,
   stringfix(proc->args.decls->decl.type),
   (newstyle ? "&" : ""),
   (newstyle ? proc->args.decls->decl.name : "argp"),
   stringfix(proc->res_type), ampr(proc->res_type),
   RESULT);
  else

  f_print(fout,
   "\treturn (clnt_call(clnt, %s,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,\n\t\t(xdrproc_t) xdr_%s, (caddr_t) %s%s,\n\t\tTIMEOUT));\n",
   proc->proc_name,
   stringfix(proc->args.decls->decl.type),
   (newstyle ? "&" : ""),
   (newstyle ? proc->args.decls->decl.name : "argp"),
   stringfix(proc->res_type), "",
   RESULT);
 }
 if (!mtflag) {
  f_print(fout, "\t\treturn (NULL);\n");
  f_print(fout, "\t}\n");

  if (streq(proc->res_type, "void")) {
   f_print(fout, "\treturn ((void *)%s%s);\n",
    ampr(proc->res_type), RESULT);
  } else {
   f_print(fout, "\treturn (%s%s);\n",
    ampr(proc->res_type), RESULT);
  }
 }
}
