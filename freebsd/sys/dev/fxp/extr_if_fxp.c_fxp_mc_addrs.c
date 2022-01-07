
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fxp_softc {int ifp; struct fxp_cb_mcs* mcsp; } ;
struct fxp_cb_mcs {int mc_cnt; } ;
typedef int if_t ;


 int ETHER_ADDR_LEN ;
 int IFF_ALLMULTI ;
 int MAXMCADDR ;
 int fxp_setup_maddr ;
 int htole16 (int) ;
 int if_foreach_llmaddr (int ,int ,struct fxp_softc*) ;
 int if_getflags (int ) ;
 int if_setflagbits (int ,int,int ) ;

__attribute__((used)) static void
fxp_mc_addrs(struct fxp_softc *sc)
{
 struct fxp_cb_mcs *mcsp = sc->mcsp;
 if_t ifp = sc->ifp;

 if ((if_getflags(ifp) & IFF_ALLMULTI) == 0) {
  mcsp->mc_cnt = 0;
  if_foreach_llmaddr(sc->ifp, fxp_setup_maddr, sc);
  if (mcsp->mc_cnt >= MAXMCADDR) {
   if_setflagbits(ifp, IFF_ALLMULTI, 0);
   mcsp->mc_cnt = 0;
  }
 }
 mcsp->mc_cnt = htole16(mcsp->mc_cnt * ETHER_ADDR_LEN);
}
