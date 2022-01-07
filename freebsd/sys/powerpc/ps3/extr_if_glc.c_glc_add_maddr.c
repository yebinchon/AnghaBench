
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct glc_softc {int sc_dev; int sc_bus; } ;


 int ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 int lv1_net_add_multicast_address (int ,int ,scalar_t__,int ) ;
 int memcpy (int *,int ,int ) ;

__attribute__((used)) static u_int
glc_add_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct glc_softc *sc = arg;
 uint64_t addr;






 if (cnt + 1 == 32)
  return (0);

 addr = 0;
 memcpy(&((uint8_t *)(&addr))[2], LLADDR(sdl), ETHER_ADDR_LEN);
 lv1_net_add_multicast_address(sc->sc_bus, sc->sc_dev, addr, 0);

 return (1);
}
