
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t u_int ;
struct ps3pic_softc {int * sc_ipi_outlet; } ;
typedef int device_t ;


 struct ps3pic_softc* device_get_softc (int ) ;
 int lv1_send_event_locally (int ) ;

__attribute__((used)) static void
ps3pic_ipi(device_t dev, u_int cpu)
{
 struct ps3pic_softc *sc;
 sc = device_get_softc(dev);

 lv1_send_event_locally(sc->sc_ipi_outlet[cpu]);
}
