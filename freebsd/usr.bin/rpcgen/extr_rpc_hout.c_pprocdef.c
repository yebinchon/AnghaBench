
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int vers_num; } ;
typedef TYPE_1__ version_list ;
struct TYPE_7__ {int proc_name; int res_type; int res_prefix; } ;
typedef TYPE_2__ proc_list ;


 int f_print (int ,char*) ;
 int fout ;
 scalar_t__ mtflag ;
 int parglist (TYPE_2__*,char const*) ;
 int ptype (int ,int ,int) ;
 int pvname (int ,int ) ;
 int pvname_svc (int ,int ) ;

__attribute__((used)) static void
pprocdef(proc_list *proc, version_list *vp, const char *addargtype, int server_p)
{
 if (mtflag) {
  if (server_p)
   f_print(fout, "bool_t ");
  else
   f_print(fout, "enum clnt_stat ");
 } else {
  ptype(proc->res_prefix, proc->res_type, 1);
  f_print(fout, "* ");
 }
 if (server_p)
  pvname_svc(proc->proc_name, vp->vers_num);
 else
  pvname(proc->proc_name, vp->vers_num);

 parglist(proc, addargtype);
}
