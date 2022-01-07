
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct e6060sw_softc {int* ifpport; } ;



__attribute__((used)) static inline int
e6060sw_portforphy(struct e6060sw_softc *sc, int phy)
{

 return (sc->ifpport[phy]);
}
