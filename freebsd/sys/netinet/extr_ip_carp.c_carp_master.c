
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ifaddr {struct carp_softc* ifa_carp; } ;
struct carp_softc {scalar_t__ sc_state; } ;


 scalar_t__ MASTER ;

int
carp_master(struct ifaddr *ifa)
{
 struct carp_softc *sc = ifa->ifa_carp;

 return (sc->sc_state == MASTER);
}
