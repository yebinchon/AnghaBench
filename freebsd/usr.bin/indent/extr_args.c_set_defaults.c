
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct pro {scalar_t__ p_type; int p_default; int * p_obj; scalar_t__ p_name; } ;
struct TYPE_2__ {double case_indent; } ;


 scalar_t__ PRO_SPECIAL ;
 TYPE_1__ opt ;
 struct pro* pro ;

void
set_defaults(void)
{
    struct pro *p;





    opt.case_indent = 0.0;
    for (p = pro; p->p_name; p++)
 if (p->p_type != PRO_SPECIAL)
     *p->p_obj = p->p_default;
}
