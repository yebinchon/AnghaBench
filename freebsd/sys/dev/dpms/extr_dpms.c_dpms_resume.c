
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpms_softc {int dpms_initial_state; } ;
typedef int device_t ;


 struct dpms_softc* device_get_softc (int ) ;
 int dpms_set_state (int ) ;

__attribute__((used)) static int
dpms_resume(device_t dev)
{
 struct dpms_softc *sc;

 sc = device_get_softc(dev);
 dpms_set_state(sc->dpms_initial_state);
 return (0);
}
