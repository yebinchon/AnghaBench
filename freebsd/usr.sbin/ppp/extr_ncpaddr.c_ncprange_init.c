
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {int ncprange_family; } ;


 int AF_UNSPEC ;

void
ncprange_init(struct ncprange *range)
{
  range->ncprange_family = AF_UNSPEC;
}
