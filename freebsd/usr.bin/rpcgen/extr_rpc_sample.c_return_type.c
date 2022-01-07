
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int res_type; int res_prefix; } ;
typedef TYPE_1__ proc_list ;


 int ptype (int ,int ,int) ;

__attribute__((used)) static void
return_type(proc_list *plist)
{
  ptype(plist->res_prefix, plist->res_type, 1);
}
