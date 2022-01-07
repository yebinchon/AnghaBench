
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cbb_softc {int irq_res; } ;
typedef int device_t ;


 scalar_t__ device_get_softc (int ) ;
 int rman_get_start (int ) ;

__attribute__((used)) static int
cbb_route_interrupt(device_t pcib, device_t dev, int pin)
{
 struct cbb_softc *sc = (struct cbb_softc *)device_get_softc(pcib);

 return (rman_get_start(sc->irq_res));
}
