
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct atpic_softc {int dummy; } ;
typedef int device_t ;


 int ATPIC_MASTER ;
 int ATPIC_SLAVE ;
 int OCW2_EOI ;
 int atpic_write (struct atpic_softc*,int ,int ,int ) ;
 struct atpic_softc* device_get_softc (int ) ;

__attribute__((used)) static void
atpic_eoi(device_t dev, u_int irq)
{
 struct atpic_softc *sc;

 sc = device_get_softc(dev);
 if (irq > 7)
  atpic_write(sc, ATPIC_SLAVE, 0, OCW2_EOI);
 atpic_write(sc, ATPIC_MASTER, 0, OCW2_EOI);
}
