
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ubsec_softc {scalar_t__ sc_suspended; } ;
typedef int device_t ;


 struct ubsec_softc* device_get_softc (int ) ;

__attribute__((used)) static int
ubsec_resume(device_t dev)
{
 struct ubsec_softc *sc = device_get_softc(dev);




 sc->sc_suspended = 0;
 return (0);
}
