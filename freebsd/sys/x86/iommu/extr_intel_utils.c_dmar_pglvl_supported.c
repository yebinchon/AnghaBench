
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct dmar_unit {int hw_cap; } ;
struct TYPE_3__ {int pglvl; int cap; } ;


 int DMAR_CAP_SAGAW (int ) ;
 int nitems (TYPE_1__*) ;
 TYPE_1__* sagaw_bits ;

bool
dmar_pglvl_supported(struct dmar_unit *unit, int pglvl)
{
 int i;

 for (i = 0; i < nitems(sagaw_bits); i++) {
  if (sagaw_bits[i].pglvl != pglvl)
   continue;
  if ((DMAR_CAP_SAGAW(unit->hw_cap) & sagaw_bits[i].cap) != 0)
   return (1);
 }
 return (0);
}
