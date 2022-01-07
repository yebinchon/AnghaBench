
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct cuda_softc {scalar_t__ sc_state; int sc_waiting; } ;
typedef int device_t ;


 scalar_t__ CUDA_IDLE ;
 int cuda_intr (int ) ;
 int cuda_intr_state (struct cuda_softc*) ;
 struct cuda_softc* device_get_softc (int ) ;

__attribute__((used)) static u_int
cuda_poll(device_t dev)
{
 struct cuda_softc *sc = device_get_softc(dev);

 if (sc->sc_state == CUDA_IDLE && !cuda_intr_state(sc) &&
     !sc->sc_waiting)
  return (0);

 cuda_intr(dev);
 return (0);
}
