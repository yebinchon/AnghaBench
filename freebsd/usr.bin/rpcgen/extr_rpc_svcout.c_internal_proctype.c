
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int res_type; int res_prefix; } ;
typedef TYPE_1__ proc_list ;


 int f_print (int ,char*) ;
 int fout ;
 int ptype (int ,int ,int) ;

void
internal_proctype(proc_list *plist)
{
 f_print(fout, "static ");
 ptype(plist->res_prefix, plist->res_type, 1);
 f_print(fout, "*");
}
