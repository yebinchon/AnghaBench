
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_cexceeded; } ;
struct bridge_softc {int sc_brtexceeded; } ;



__attribute__((used)) static int
bridge_ioctl_grte(struct bridge_softc *sc, void *arg)
{
 struct ifbrparam *param = arg;

 param->ifbrp_cexceeded = sc->sc_brtexceeded;
 return (0);
}
