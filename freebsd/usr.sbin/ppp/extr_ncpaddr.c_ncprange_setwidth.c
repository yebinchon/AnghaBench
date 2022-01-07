
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncprange {int ncprange_family; int ncprange_ip4width; int ncprange_ip6width; int ncprange_ip4mask; } ;





 int bits2mask4 (int) ;

int
ncprange_setwidth(struct ncprange *range, int width)
{
  switch (range->ncprange_family) {
  case 130:
    if (width < 0 || width > 32)
      break;
    range->ncprange_ip4width = width;
    range->ncprange_ip4mask = bits2mask4(width);
    break;


  case 129:
    if (width < 0 || width > 128)
      break;
    range->ncprange_ip6width = width;
    break;


  case 128:
    return 1;
  }

  return 0;
}
