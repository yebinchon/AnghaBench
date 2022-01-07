
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int u_int ;
struct sockaddr_dl {int dummy; } ;
struct muge_softc {int* sc_mchash_table; int sc_rfe_ctl; } ;


 int ETH_RFE_CTL_MCAST_HASH_ ;
 int LLADDR (struct sockaddr_dl*) ;
 int muge_hash (int ) ;
 int muge_set_addr_filter (struct muge_softc*,int,int ) ;

__attribute__((used)) static u_int
muge_hash_maddr(void *arg, struct sockaddr_dl *sdl, u_int cnt)
{
 struct muge_softc *sc = arg;
 uint32_t bitnum;


 if (cnt < 32 )
  muge_set_addr_filter(sc, cnt + 1, LLADDR(sdl));
 else {
  bitnum = muge_hash(LLADDR(sdl));
  sc->sc_mchash_table[bitnum / 32] |= (1 << (bitnum % 32));
  sc->sc_rfe_ctl |= ETH_RFE_CTL_MCAST_HASH_;
 }

 return (1);
}
