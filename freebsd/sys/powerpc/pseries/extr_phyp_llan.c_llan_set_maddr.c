
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct llan_softc {int unit; } ;


 int H_MULTICAST_CTRL ;
 int LLADDR (struct sockaddr_dl*) ;
 int LLAN_ADD_MULTICAST ;
 int memcpy (int *,int ,int) ;
 int phyp_hcall (int ,int ,int ,scalar_t__) ;

__attribute__((used)) static u_int
llan_set_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct llan_softc *sc = arg;
 uint64_t macaddr = 0;

 memcpy((uint8_t *)&macaddr + 2, LLADDR(sdl), 6);
 phyp_hcall(H_MULTICAST_CTRL, sc->unit, LLAN_ADD_MULTICAST, macaddr);

 return (1);
}
