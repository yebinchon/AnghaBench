
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {int ncprange_family; } ;


 int memset (struct ncprange*,char,int) ;

void
ncprange_setdefault(struct ncprange *range, int af)
{
  memset(range, '\0', sizeof *range);
  range->ncprange_family = af;
}
