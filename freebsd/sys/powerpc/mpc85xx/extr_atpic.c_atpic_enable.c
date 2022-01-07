
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct atpic_softc {size_t* sc_vector; } ;
typedef int device_t ;


 int atpic_unmask (int ,size_t) ;
 struct atpic_softc* device_get_softc (int ) ;

__attribute__((used)) static void
atpic_enable(device_t dev, u_int irq, u_int vector)
{
 struct atpic_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_vector[irq] = vector;
 atpic_unmask(dev, irq);
}
