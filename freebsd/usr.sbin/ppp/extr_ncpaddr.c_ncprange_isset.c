
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {scalar_t__ ncprange_family; } ;


 scalar_t__ AF_UNSPEC ;

int
ncprange_isset(const struct ncprange *range)
{
  return range->ncprange_family != AF_UNSPEC;
}
