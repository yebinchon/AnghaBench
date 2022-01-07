
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct g_consumer {scalar_t__ ace; scalar_t__ acw; scalar_t__ acr; } ;



int
gv_consumer_is_open(struct g_consumer *cp)
{
 if (cp == ((void*)0))
  return (0);

 if (cp->acr || cp->acw || cp->ace)
  return (1);

 return (0);
}
