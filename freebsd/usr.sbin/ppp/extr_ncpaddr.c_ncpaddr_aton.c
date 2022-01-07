
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ s_addr; } ;
struct ncprange {int ncprange_family; int ncprange_ip4width; int ncprange_ip6width; int ncprange_ip6addr; TYPE_1__ ncprange_ip4addr; } ;
struct ncpaddr {int ncpaddr_family; int ncpaddr_ip6addr; TYPE_1__ ncpaddr_ip4addr; } ;
struct ncp {int dummy; } ;




 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 scalar_t__ INADDR_ANY ;
 int LogWARN ;
 int log_Printf (int ,char*,char const*) ;
 int ncprange_aton (struct ncprange*,struct ncp*,char const*) ;

int
ncpaddr_aton(struct ncpaddr *addr, struct ncp *ncp, const char *data)
{
  struct ncprange range;

  if (!ncprange_aton(&range, ncp, data))
    return 0;

  if (range.ncprange_family == 129 && range.ncprange_ip4width != 32 &&
      range.ncprange_ip4addr.s_addr != INADDR_ANY) {
    log_Printf(LogWARN, "ncpaddr_aton: %s: Only 32 bits allowed\n", data);
    return 0;
  }


  if (range.ncprange_family == 128 && range.ncprange_ip6width != 128 &&
      !IN6_IS_ADDR_UNSPECIFIED(&range.ncprange_ip6addr)) {
    log_Printf(LogWARN, "ncpaddr_aton: %s: Only 128 bits allowed\n", data);
    return 0;
  }


  switch (range.ncprange_family) {
  case 129:
    addr->ncpaddr_family = range.ncprange_family;
    addr->ncpaddr_ip4addr = range.ncprange_ip4addr;
    return 1;


  case 128:
    addr->ncpaddr_family = range.ncprange_family;
    addr->ncpaddr_ip6addr = range.ncprange_ip6addr;
    return 1;

  }

  return 0;
}
