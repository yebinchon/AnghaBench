
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ps3pic_softc {size_t* sc_vector; } ;
typedef int device_t ;


 struct ps3pic_softc* device_get_softc (int ) ;
 int ps3pic_unmask (int ,size_t,void**) ;

__attribute__((used)) static void
ps3pic_enable(device_t dev, u_int irq, u_int vector, void **priv)
{
 struct ps3pic_softc *sc;

 sc = device_get_softc(dev);
 sc->sc_vector[irq] = vector;

 ps3pic_unmask(dev, irq, priv);
}
