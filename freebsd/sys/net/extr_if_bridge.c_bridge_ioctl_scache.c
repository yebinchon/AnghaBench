
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_csize; } ;
struct bridge_softc {int sc_brtmax; } ;


 int bridge_rttrim (struct bridge_softc*) ;

__attribute__((used)) static int
bridge_ioctl_scache(struct bridge_softc *sc, void *arg)
{
 struct ifbrparam *param = arg;

 sc->sc_brtmax = param->ifbrp_csize;
 bridge_rttrim(sc);

 return (0);
}
