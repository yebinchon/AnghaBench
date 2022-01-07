
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct fxp_softc {struct fxp_cb_mcs* mcsp; } ;
struct fxp_cb_mcs {size_t mc_cnt; int * mc_addr; } ;


 size_t ETHER_ADDR_LEN ;
 int LLADDR (struct sockaddr_dl*) ;
 size_t MAXMCADDR ;
 int bcopy (int ,int ,size_t) ;

__attribute__((used)) static u_int
fxp_setup_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct fxp_softc *sc = arg;
 struct fxp_cb_mcs *mcsp = sc->mcsp;

 if (mcsp->mc_cnt < MAXMCADDR)
  bcopy(LLADDR(sdl), mcsp->mc_addr[mcsp->mc_cnt * ETHER_ADDR_LEN],
      ETHER_ADDR_LEN);
 mcsp->mc_cnt++;
 return (1);
}
