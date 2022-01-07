
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct adm6996fc_softc {int* ifpport; } ;



__attribute__((used)) static inline int
adm6996fc_portforphy(struct adm6996fc_softc *sc, int phy)
{

 return (sc->ifpport[phy]);
}
