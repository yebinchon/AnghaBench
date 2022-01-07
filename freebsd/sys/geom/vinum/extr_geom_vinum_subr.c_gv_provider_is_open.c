
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_provider {scalar_t__ ace; scalar_t__ acw; scalar_t__ acr; } ;



int
gv_provider_is_open(struct g_provider *pp)
{
 if (pp == ((void*)0))
  return (0);

 if (pp->acr || pp->acw || pp->ace)
  return (1);

 return (0);
}
