
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ksz8995ma_softc {int* ifpport; } ;



__attribute__((used)) static inline int
ksz8995ma_portforphy(struct ksz8995ma_softc *sc, int phy)
{

 return (sc->ifpport[phy]);
}
