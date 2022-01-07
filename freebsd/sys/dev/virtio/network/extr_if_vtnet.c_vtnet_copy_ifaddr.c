
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef size_t u_int ;
struct vtnet_softc {TYPE_2__* vtnet_mac_filter; int vtnet_hwaddr; } ;
struct sockaddr_dl {int dummy; } ;
struct TYPE_3__ {int * macs; } ;
struct TYPE_4__ {TYPE_1__ vmf_unicast; } ;


 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 size_t VTNET_MAX_MAC_ENTRIES ;
 int bcopy (int ,int *,int ) ;
 scalar_t__ memcmp (int ,int ,int ) ;

__attribute__((used)) static u_int
vtnet_copy_ifaddr(void *arg, struct sockaddr_dl *sdl, u_int ucnt)
{
 struct vtnet_softc *sc = arg;

 if (memcmp(LLADDR(sdl), sc->vtnet_hwaddr, ETHER_ADDR_LEN) == 0)
  return (0);

 if (ucnt < VTNET_MAX_MAC_ENTRIES)
  bcopy(LLADDR(sdl),
      &sc->vtnet_mac_filter->vmf_unicast.macs[ucnt],
      ETHER_ADDR_LEN);

 return (1);
}
