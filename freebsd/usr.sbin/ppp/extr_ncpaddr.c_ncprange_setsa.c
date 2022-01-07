
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sockaddr_in6 {int sin6_addr; } ;
struct TYPE_4__ {int s_addr; } ;
struct sockaddr_in {int const sin_family; TYPE_2__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct TYPE_3__ {int s_addr; } ;
struct ncprange {int ncprange_family; int ncprange_ip4width; int ncprange_ip6width; int ncprange_ip6addr; TYPE_1__ ncprange_ip4mask; TYPE_2__ ncprange_ip4addr; } ;




 int AF_UNSPEC ;
 int IN6_IS_ADDR_UNSPECIFIED (int *) ;
 int INADDR_ANY ;
 int INADDR_BROADCAST ;
 int mask42bits (TYPE_2__) ;
 int mask62bits (int *) ;

void
ncprange_setsa(struct ncprange *range, const struct sockaddr *host,
               const struct sockaddr *mask)
{
  const struct sockaddr_in *host4 = (const struct sockaddr_in *)host;
  const struct sockaddr_in *mask4 = (const struct sockaddr_in *)mask;

  const struct sockaddr_in6 *host6 = (const struct sockaddr_in6 *)host;
  const struct sockaddr_in6 *mask6 = (const struct sockaddr_in6 *)mask;


  switch (host->sa_family) {
  case 129:
    range->ncprange_family = 129;
    range->ncprange_ip4addr = host4->sin_addr;
    if (host4->sin_addr.s_addr == INADDR_ANY) {
      range->ncprange_ip4mask.s_addr = INADDR_ANY;
      range->ncprange_ip4width = 0;
    } else if (mask4 && mask4->sin_family == 129) {
      range->ncprange_ip4mask.s_addr = mask4->sin_addr.s_addr;
      range->ncprange_ip4width = mask42bits(mask4->sin_addr);
    } else {
      range->ncprange_ip4mask.s_addr = INADDR_BROADCAST;
      range->ncprange_ip4width = 32;
    }
    break;


  case 128:
    range->ncprange_family = 128;
    range->ncprange_ip6addr = host6->sin6_addr;
    if (IN6_IS_ADDR_UNSPECIFIED(&host6->sin6_addr))
      range->ncprange_ip6width = 0;
    else
      range->ncprange_ip6width = mask6 ? mask62bits(&mask6->sin6_addr) : 128;
    break;


  default:
    range->ncprange_family = AF_UNSPEC;
  }
}
