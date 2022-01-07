
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int countryCode; int regDmnEnum; int name; int isoName; } ;
typedef int HAL_REG_DOMAIN ;
typedef int HAL_CTRY_CODE ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 TYPE_1__* allCountries ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strcasecmp (int ,char const*) ;

__attribute__((used)) static HAL_BOOL
cclookup(const char *name, HAL_REG_DOMAIN *rd, HAL_CTRY_CODE *cc)
{
 int i;

 for (i = 0; i < nitems(allCountries); i++)
  if (strcasecmp(allCountries[i].isoName, name) == 0 ||
      strcasecmp(allCountries[i].name, name) == 0) {
   *rd = allCountries[i].regDmnEnum;
   *cc = allCountries[i].countryCode;
   return AH_TRUE;
  }
 return AH_FALSE;
}
