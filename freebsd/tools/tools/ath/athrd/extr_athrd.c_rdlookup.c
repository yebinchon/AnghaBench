
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int rd; int name; } ;
typedef int HAL_REG_DOMAIN ;
typedef int HAL_BOOL ;


 int AH_FALSE ;
 int AH_TRUE ;
 TYPE_1__* domains ;
 int nitems (TYPE_1__*) ;
 scalar_t__ strcasecmp (int ,char const*) ;

__attribute__((used)) static HAL_BOOL
rdlookup(const char *name, HAL_REG_DOMAIN *rd)
{
 int i;

 for (i = 0; i < nitems(domains); i++)
  if (strcasecmp(domains[i].name, name) == 0) {
   *rd = domains[i].rd;
   return AH_TRUE;
  }
 return AH_FALSE;
}
