
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int srr1; } ;


 int PSL_SE ;
 TYPE_1__* kdb_frame ;

void
kdb_cpu_set_singlestep(void)
{

 kdb_frame->srr1 |= PSL_SE;
}
