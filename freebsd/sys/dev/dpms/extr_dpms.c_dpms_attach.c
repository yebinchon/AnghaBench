
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dpms_softc {int dpms_initial_state; int dpms_supported_states; } ;
typedef int device_t ;


 struct dpms_softc* device_get_softc (int ) ;
 int dpms_get_current_state (int *) ;
 int dpms_get_supported_states (int *) ;

__attribute__((used)) static int
dpms_attach(device_t dev)
{
 struct dpms_softc *sc;
 int error;

 sc = device_get_softc(dev);
 error = dpms_get_supported_states(&sc->dpms_supported_states);
 if (error)
  return (error);
 error = dpms_get_current_state(&sc->dpms_initial_state);
 return (error);
}
