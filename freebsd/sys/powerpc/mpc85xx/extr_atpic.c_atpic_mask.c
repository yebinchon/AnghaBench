
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct atpic_softc {int* sc_mask; } ;
typedef int device_t ;


 size_t ATPIC_MASTER ;
 size_t ATPIC_SLAVE ;
 int atpic_write (struct atpic_softc*,size_t,int,int) ;
 struct atpic_softc* device_get_softc (int ) ;

__attribute__((used)) static void
atpic_mask(device_t dev, u_int irq)
{
 struct atpic_softc *sc;

 sc = device_get_softc(dev);
 if (irq > 7) {
  sc->sc_mask[ATPIC_SLAVE] |= 1 << (irq - 8);
  atpic_write(sc, ATPIC_SLAVE, 1, sc->sc_mask[ATPIC_SLAVE]);
 } else {
  sc->sc_mask[ATPIC_MASTER] |= 1 << irq;
  atpic_write(sc, ATPIC_MASTER, 1, sc->sc_mask[ATPIC_MASTER]);
 }
}
