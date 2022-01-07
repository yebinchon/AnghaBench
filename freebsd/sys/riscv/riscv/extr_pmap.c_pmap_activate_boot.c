
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int u_int ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {int pm_active; } ;


 int CPU_SET (int ,int *) ;
 int CPU_SET_ATOMIC (int ,int *) ;
 int PCPU_GET (int ) ;
 int PCPU_SET (int ,TYPE_1__*) ;
 int curpmap ;

void
pmap_activate_boot(pmap_t pmap)
{
 u_int hart;

 hart = PCPU_GET(hart);



 CPU_SET(hart, &pmap->pm_active);

 PCPU_SET(curpmap, pmap);
}
