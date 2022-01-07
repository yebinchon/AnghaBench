
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct trapframe {int dummy; } ;
struct atpic_softc {int * sc_vector; } ;
typedef int device_t ;


 int ATPIC_MASTER ;
 int ATPIC_SLAVE ;
 int OCW3_P ;
 int OCW3_RR ;
 int OCW3_SEL ;
 int atpic_read (struct atpic_softc*,int ,int ) ;
 int atpic_write (struct atpic_softc*,int ,int ,int) ;
 struct atpic_softc* device_get_softc (int ) ;
 int powerpc_dispatch_intr (int ,struct trapframe*) ;

__attribute__((used)) static void
atpic_dispatch(device_t dev, struct trapframe *tf)
{
 struct atpic_softc *sc;
 uint8_t irq;

 sc = device_get_softc(dev);
 atpic_write(sc, ATPIC_MASTER, 0, OCW3_SEL | OCW3_P);
 irq = atpic_read(sc, ATPIC_MASTER, 0);
 atpic_write(sc, ATPIC_MASTER, 0, OCW3_SEL | OCW3_RR);
 if ((irq & 0x80) == 0)
  return;

 if (irq == 0x82) {
  atpic_write(sc, ATPIC_SLAVE, 0, OCW3_SEL | OCW3_P);
  irq = atpic_read(sc, ATPIC_SLAVE, 0) + 8;
  atpic_write(sc, ATPIC_SLAVE, 0, OCW3_SEL | OCW3_RR);
  if ((irq & 0x80) == 0)
   return;
 }

 powerpc_dispatch_intr(sc->sc_vector[irq & 0x0f], tf);
}
