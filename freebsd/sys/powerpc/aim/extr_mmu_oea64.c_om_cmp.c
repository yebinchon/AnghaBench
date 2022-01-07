
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_map {scalar_t__ om_pa; } ;



__attribute__((used)) static int
om_cmp(const void *a, const void *b)
{
 const struct ofw_map *mapa;
 const struct ofw_map *mapb;

 mapa = a;
 mapb = b;
 if (mapa->om_pa < mapb->om_pa)
  return (-1);
 else if (mapa->om_pa > mapb->om_pa)
  return (1);
 else
  return (0);
}
