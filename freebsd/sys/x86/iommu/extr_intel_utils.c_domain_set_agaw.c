
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct dmar_domain {int mgaw; int agaw; TYPE_1__* dmar; int awlvl; int pglvl; } ;
struct TYPE_5__ {int agaw; int awlvl; int pglvl; } ;
struct TYPE_4__ {int dev; int hw_cap; } ;


 int DMAR_CAP_SAGAW (int ) ;
 int EINVAL ;
 int device_printf (int ,char*,int,int) ;
 int nitems (TYPE_2__*) ;
 TYPE_2__* sagaw_bits ;

int
domain_set_agaw(struct dmar_domain *domain, int mgaw)
{
 int sagaw, i;

 domain->mgaw = mgaw;
 sagaw = DMAR_CAP_SAGAW(domain->dmar->hw_cap);
 for (i = 0; i < nitems(sagaw_bits); i++) {
  if (sagaw_bits[i].agaw >= mgaw) {
   domain->agaw = sagaw_bits[i].agaw;
   domain->pglvl = sagaw_bits[i].pglvl;
   domain->awlvl = sagaw_bits[i].awlvl;
   return (0);
  }
 }
 device_printf(domain->dmar->dev,
     "context request mgaw %d: no agaw found, sagaw %x\n",
     mgaw, sagaw);
 return (EINVAL);
}
