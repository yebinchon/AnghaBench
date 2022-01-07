
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u_int32_t ;
struct TYPE_4__ {int s6_addr; } ;
struct sockaddr_in6 {TYPE_2__ sin6_addr; } ;
struct TYPE_3__ {int s_addr; } ;
struct sockaddr_in {TYPE_1__ sin_addr; } ;
struct sockaddr {int sa_family; } ;
struct ncpaddr {int ncpaddr_family; TYPE_2__ ncpaddr_ip6addr; TYPE_1__ ncpaddr_ip4addr; } ;




 int AF_UNSPEC ;
 int IN6_IS_ADDR_V4MAPPED (TYPE_2__*) ;

void
ncpaddr_setsa(struct ncpaddr *addr, const struct sockaddr *host)
{
  const struct sockaddr_in *host4 = (const struct sockaddr_in *)host;

  const struct sockaddr_in6 *host6 = (const struct sockaddr_in6 *)host;


  switch (host->sa_family) {
  case 129:
    addr->ncpaddr_family = 129;
    addr->ncpaddr_ip4addr = host4->sin_addr;
    break;


  case 128:
    if (IN6_IS_ADDR_V4MAPPED(&host6->sin6_addr)) {
      addr->ncpaddr_family = 129;
      addr->ncpaddr_ip4addr.s_addr =
        *(const u_int32_t *)(host6->sin6_addr.s6_addr + 12);
    } else {
      addr->ncpaddr_family = 128;
      addr->ncpaddr_ip6addr = host6->sin6_addr;
    }
    break;


  default:
    addr->ncpaddr_family = AF_UNSPEC;
  }
}
