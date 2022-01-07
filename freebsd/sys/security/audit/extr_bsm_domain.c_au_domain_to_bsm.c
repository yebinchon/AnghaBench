
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_short ;
struct bsm_domain {int bd_bsm_domain; } ;


 int BSM_PF_UNKNOWN ;
 struct bsm_domain* bsm_lookup_local_domain (int) ;

u_short
au_domain_to_bsm(int local_domain)
{
 const struct bsm_domain *bstp;

 bstp = bsm_lookup_local_domain(local_domain);
 if (bstp == ((void*)0))
  return (BSM_PF_UNKNOWN);
 return (bstp->bd_bsm_domain);
}
