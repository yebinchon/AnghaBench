
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifbrparam {int ifbrp_ctime; } ;
struct bridge_softc {int sc_brttimeout; } ;



__attribute__((used)) static int
bridge_ioctl_gto(struct bridge_softc *sc, void *arg)
{
 struct ifbrparam *param = arg;

 param->ifbrp_ctime = sc->sc_brttimeout;
 return (0);
}
