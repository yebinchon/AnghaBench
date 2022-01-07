
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct agp_softc {int as_state; } ;
typedef enum agp_acquire_state { ____Placeholder_agp_acquire_state } agp_acquire_state ;
typedef int device_t ;


 struct agp_softc* device_get_softc (int ) ;

enum agp_acquire_state
agp_state(device_t dev)
{
 struct agp_softc *sc = device_get_softc(dev);
 return sc->as_state;
}
