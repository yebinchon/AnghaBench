
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ countryCode; char const* name; } ;
typedef scalar_t__ HAL_CTRY_CODE ;


 TYPE_1__* allCountries ;
 int nitems (TYPE_1__*) ;

__attribute__((used)) static const char *
getccname(HAL_CTRY_CODE cc)
{
 int i;

 for (i = 0; i < nitems(allCountries); i++)
  if (allCountries[i].countryCode == cc)
   return allCountries[i].name;
 return ((void*)0);
}
