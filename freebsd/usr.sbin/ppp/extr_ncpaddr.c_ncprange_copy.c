
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {int ncprange_family; int ncprange_ip6width; int ncprange_ip6addr; int ncprange_ip4width; int ncprange_ip4mask; int ncprange_ip4addr; } ;




 int AF_UNSPEC ;

void
ncprange_copy(struct ncprange *range, const struct ncprange *from)
{
  switch (from->ncprange_family) {
  case 129:
    range->ncprange_family = 129;
    range->ncprange_ip4addr = from->ncprange_ip4addr;
    range->ncprange_ip4mask = from->ncprange_ip4mask;
    range->ncprange_ip4width = from->ncprange_ip4width;
    break;


  case 128:
    range->ncprange_family = 128;
    range->ncprange_ip6addr = from->ncprange_ip6addr;
    range->ncprange_ip6width = from->ncprange_ip6width;
    break;


  default:
    range->ncprange_family = AF_UNSPEC;
  }
}
