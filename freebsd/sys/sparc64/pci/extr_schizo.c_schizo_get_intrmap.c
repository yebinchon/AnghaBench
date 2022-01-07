
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int u_int ;
struct schizo_softc {int sc_dev; } ;
typedef scalar_t__ bus_addr_t ;


 int INTINO (int ) ;
 int SCHIZO_PCI_READ_8 (struct schizo_softc*,scalar_t__) ;
 int STX_MAX_INO ;
 scalar_t__ STX_PCI_ICLR_BASE ;
 scalar_t__ STX_PCI_IMAP_BASE ;
 int device_printf (int ,char*,int,...) ;

__attribute__((used)) static int
schizo_get_intrmap(struct schizo_softc *sc, u_int ino,
    bus_addr_t *intrmapptr, bus_addr_t *intrclrptr)
{
 bus_addr_t intrclr, intrmap;
 uint64_t mr;







 if (ino > STX_MAX_INO) {
  device_printf(sc->sc_dev, "out of range INO %d requested\n",
      ino);
  return (0);
 }

 intrmap = STX_PCI_IMAP_BASE + (ino << 3);
 intrclr = STX_PCI_ICLR_BASE + (ino << 3);
 mr = SCHIZO_PCI_READ_8(sc, intrmap);
 if (INTINO(mr) != ino) {
  device_printf(sc->sc_dev,
      "interrupt map entry does not match INO (%d != %d)\n",
      (int)INTINO(mr), ino);
  return (0);
 }

 if (intrmapptr != ((void*)0))
  *intrmapptr = intrmap;
 if (intrclrptr != ((void*)0))
  *intrclrptr = intrclr;
 return (1);
}
