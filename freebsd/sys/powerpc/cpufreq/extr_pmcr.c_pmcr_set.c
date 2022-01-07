
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cf_setting {scalar_t__* spec; } ;
typedef long register_t ;
typedef int device_t ;


 int EINVAL ;
 long PMCR_LOWERPS_MASK ;
 long PMCR_LOWERPS_SHIFT ;
 long PMCR_UPPERPS_MASK ;
 long PMCR_UPPERPS_SHIFT ;
 long PMCR_VERSION_1 ;
 int SPR_PMCR ;
 int isync () ;
 int mtspr (int ,long) ;
 scalar_t__ npstates ;
 int powerpc_sync () ;

__attribute__((used)) static int
pmcr_set(device_t dev, const struct cf_setting *set)
{
 register_t pmcr;

 if (set == ((void*)0))
  return (EINVAL);

 if (set->spec[1] < 0 || set->spec[1] >= npstates)
  return (EINVAL);

 pmcr = ((long)set->spec[0] << PMCR_LOWERPS_SHIFT) & PMCR_LOWERPS_MASK;
 pmcr |= ((long)set->spec[0] << PMCR_UPPERPS_SHIFT) & PMCR_UPPERPS_MASK;
 pmcr |= PMCR_VERSION_1;

 mtspr(SPR_PMCR, pmcr);
 powerpc_sync(); isync();

 return (0);
}
