
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u_char ;
struct TYPE_9__ {scalar_t__ s6_addr; } ;
struct TYPE_8__ {int s_addr; } ;
struct TYPE_7__ {int s_addr; } ;
struct ncprange {int ncprange_family; int ncprange_ip6width; TYPE_4__ ncprange_ip6addr; TYPE_3__ ncprange_ip4mask; TYPE_2__ ncprange_ip4addr; } ;
struct TYPE_10__ {scalar_t__ s6_addr; } ;
struct TYPE_6__ {int s_addr; } ;
struct ncpaddr {int ncpaddr_family; TYPE_5__ ncpaddr_ip6addr; TYPE_1__ ncpaddr_ip4addr; } ;





int
ncprange_contains(const struct ncprange *range, const struct ncpaddr *addr)
{

  const u_char masks[] = { 0x80, 0xc0, 0xe0, 0xf0, 0xf8, 0xfc, 0xfe, 0xff };
  const u_char *addrp, *rangep;
  int bits;


  if (range->ncprange_family != addr->ncpaddr_family)
    return 0;

  switch (range->ncprange_family) {
  case 129:
    return !((addr->ncpaddr_ip4addr.s_addr ^ range->ncprange_ip4addr.s_addr) &
             range->ncprange_ip4mask.s_addr);


  case 128:
    rangep = (const u_char *)range->ncprange_ip6addr.s6_addr;
    addrp = (const u_char *)addr->ncpaddr_ip6addr.s6_addr;

    for (bits = range->ncprange_ip6width; bits > 0; bits -= 8)
      if ((*addrp++ ^ *rangep++) & masks[bits > 7 ? 7 : bits - 1])
        return 0;

    return 1;

  }

  return 0;
}
