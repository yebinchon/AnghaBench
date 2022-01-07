
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpms_softc {int dpms_supported_states; } ;
typedef int device_t ;


 int DPMS_OFF ;
 struct dpms_softc* device_get_softc (int ) ;
 int dpms_set_state (int) ;

__attribute__((used)) static int
dpms_suspend(device_t dev)
{
 struct dpms_softc *sc;

 sc = device_get_softc(dev);
 if ((sc->dpms_supported_states & DPMS_OFF) != 0)
  dpms_set_state(DPMS_OFF);
 return (0);
}
