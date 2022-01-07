
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rd; char const* name; } ;
typedef scalar_t__ HAL_REG_DOMAIN ;


 TYPE_1__* domains ;
 int nitems (TYPE_1__*) ;

__attribute__((used)) static const char *
getrdname(HAL_REG_DOMAIN rd)
{
 int i;

 for (i = 0; i < nitems(domains); i++)
  if (domains[i].rd == rd)
   return domains[i].name;
 return ((void*)0);
}
