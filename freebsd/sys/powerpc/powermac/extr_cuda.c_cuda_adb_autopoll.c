
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
struct cuda_softc {int sc_autopoll; int sc_mutex; } ;
typedef int device_t ;


 int CMD_AUTOPOLL ;
 int CUDA_PSEUDO ;
 int cuda_send (struct cuda_softc*,int,int,int*) ;
 struct cuda_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static u_int
cuda_adb_autopoll(device_t dev, uint16_t mask) {
 struct cuda_softc *sc = device_get_softc(dev);

 uint8_t cmd[] = {CUDA_PSEUDO, CMD_AUTOPOLL, mask != 0};

 mtx_lock(&sc->sc_mutex);

 if (cmd[2] == sc->sc_autopoll) {
  mtx_unlock(&sc->sc_mutex);
  return (0);
 }

 sc->sc_autopoll = -1;
 cuda_send(sc, 1, 3, cmd);

 mtx_unlock(&sc->sc_mutex);

 return (0);
}
