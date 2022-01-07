
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ofw_map {scalar_t__ om_start; } ;



__attribute__((used)) static int
om_cmp(const void *a, const void *b)
{
 const struct ofw_map *oma;
 const struct ofw_map *omb;

 oma = a;
 omb = b;
 if (oma->om_start < omb->om_start)
  return (-1);
 else if (oma->om_start > omb->om_start)
  return (1);
 else
  return (0);
}
