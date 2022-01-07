
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {int dummy; } ;
struct ncpaddr {int dummy; } ;


 int ncprange_sethost (struct ncprange*,struct ncpaddr const*) ;
 int ncprange_setwidth (struct ncprange*,int) ;

void
ncprange_set(struct ncprange *range, const struct ncpaddr *addr, int width)
{
  ncprange_sethost(range, addr);
  ncprange_setwidth(range, width);
}
