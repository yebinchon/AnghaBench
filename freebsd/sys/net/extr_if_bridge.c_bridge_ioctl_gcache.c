
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_csize; } ;
struct bridge_softc {int sc_brtmax; } ;



__attribute__((used)) static int
bridge_ioctl_gcache(struct bridge_softc *sc, void *arg)
{
 struct ifbrparam *param = arg;

 param->ifbrp_csize = sc->sc_brtmax;

 return (0);
}
