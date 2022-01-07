
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct fire_softc {int sc_dev; } ;
typedef scalar_t__ bus_addr_t ;


 int FO_MAX_INO ;
 scalar_t__ FO_PCI_INT_CLR_BASE ;
 scalar_t__ FO_PCI_INT_MAP_BASE ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
fire_get_intrmap(struct fire_softc *sc, u_int ino, bus_addr_t *intrmapptr,
    bus_addr_t *intrclrptr)
{

 if (ino > FO_MAX_INO) {
  device_printf(sc->sc_dev, "out of range INO %d requested\n",
      ino);
  return (0);
 }

 ino <<= 3;
 if (intrmapptr != ((void*)0))
  *intrmapptr = FO_PCI_INT_MAP_BASE + ino;
 if (intrclrptr != ((void*)0))
  *intrclrptr = FO_PCI_INT_CLR_BASE + ino;
 return (1);
}
