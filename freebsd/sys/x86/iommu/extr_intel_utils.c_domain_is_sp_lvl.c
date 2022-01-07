
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dmar_domain {int pglvl; TYPE_1__* dmar; } ;
struct TYPE_2__ {int hw_cap; } ;


 int DMAR_CAP_SPS (int ) ;




 int nitems (int const*) ;

int
domain_is_sp_lvl(struct dmar_domain *domain, int lvl)
{
 int alvl, cap_sps;
 static const int sagaw_sp[] = {
  129,
  131,
  128,
  130
 };

 alvl = domain->pglvl - lvl - 1;
 cap_sps = DMAR_CAP_SPS(domain->dmar->hw_cap);
 return (alvl < nitems(sagaw_sp) && (sagaw_sp[alvl] & cap_sps) != 0);
}
