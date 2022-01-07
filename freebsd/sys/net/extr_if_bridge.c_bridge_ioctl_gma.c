
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_maxage; } ;
struct bstp_state {int bs_bridge_max_age; } ;
struct bridge_softc {struct bstp_state sc_stp; } ;



__attribute__((used)) static int
bridge_ioctl_gma(struct bridge_softc *sc, void *arg)
{
 struct ifbrparam *param = arg;
 struct bstp_state *bs = &sc->sc_stp;

 param->ifbrp_maxage = bs->bs_bridge_max_age >> 8;
 return (0);
}
