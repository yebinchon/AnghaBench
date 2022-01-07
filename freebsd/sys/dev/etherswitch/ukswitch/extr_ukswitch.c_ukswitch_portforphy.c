
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ukswitch_softc {int* ifpport; } ;



__attribute__((used)) static inline int
ukswitch_portforphy(struct ukswitch_softc *sc, int phy)
{

 return (sc->ifpport[phy]);
}
