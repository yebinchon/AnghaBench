
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int register_t ;
struct TYPE_2__ {int srr1; } ;


 int DBCR0_IC ;
 int DBCR0_IDM ;
 int PSL_DE ;
 int SPR_DBCR0 ;
 TYPE_1__* kdb_frame ;
 int mfspr (int ) ;
 int mtspr (int ,int) ;

void
kdb_cpu_set_singlestep(void)
{
 register_t r;

 r = mfspr(SPR_DBCR0);
 mtspr(SPR_DBCR0, r | DBCR0_IC | DBCR0_IDM);
 kdb_frame->srr1 |= PSL_DE;
}
