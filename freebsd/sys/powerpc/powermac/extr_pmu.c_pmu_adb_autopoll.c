
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int uint16_t ;
typedef int u_int ;
struct pmu_softc {int sc_autopoll; int sc_mutex; } ;
typedef int device_t ;


 int PMU_ADB_CMD ;
 int PMU_ADB_POLL_OFF ;
 int PMU_SET_POLL_MASK ;
 struct pmu_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmu_send (struct pmu_softc*,int ,int,int*,int,int*) ;

__attribute__((used)) static u_int
pmu_adb_autopoll(device_t dev, uint16_t mask)
{
 struct pmu_softc *sc = device_get_softc(dev);


 uint8_t cmd[] = {0, PMU_SET_POLL_MASK, (mask >> 8) & 0xff, mask & 0xff};
 uint8_t resp[16];

 mtx_lock(&sc->sc_mutex);

 if (sc->sc_autopoll == mask) {
  mtx_unlock(&sc->sc_mutex);
  return 0;
 }

 sc->sc_autopoll = mask & 0xffff;

 if (mask)
  pmu_send(sc, PMU_ADB_CMD, 4, cmd, 16, resp);
 else
  pmu_send(sc, PMU_ADB_POLL_OFF, 0, ((void*)0), 16, resp);

 mtx_unlock(&sc->sc_mutex);

 return 0;
}
