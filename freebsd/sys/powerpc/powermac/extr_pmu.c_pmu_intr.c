
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pmu_softc {int sc_autopoll; int lid_closed; int adb_bus; int sc_mutex; } ;
typedef scalar_t__ device_t ;


 int ADB_COMMAND_TALK ;
 int PMU_ADB_CMD ;
 int PMU_ENV_LID_CLOSED ;
 int PMU_ENV_POWER ;
 int PMU_INT_ACK ;
 int PMU_INT_ADB ;
 int PMU_INT_ENVIRONMENT ;
 int PMU_SET_POLL_MASK ;
 int adb_receive_raw_packet (int ,int,int,unsigned int,int*) ;
 int devctl_notify (char*,char*,char*,int *) ;
 struct pmu_softc* device_get_softc (scalar_t__) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 unsigned int pmu_send (struct pmu_softc*,int ,int,int*,int,int*) ;
 int pmu_write_reg (struct pmu_softc*,int ,int) ;
 int vIFR ;

__attribute__((used)) static void
pmu_intr(void *arg)
{
 device_t dev;
 struct pmu_softc *sc;

 unsigned int len;
 uint8_t resp[16];
 uint8_t junk[16];

        dev = (device_t)arg;
 sc = device_get_softc(dev);

 mtx_lock(&sc->sc_mutex);

 pmu_write_reg(sc, vIFR, 0x90);
 len = pmu_send(sc, PMU_INT_ACK, 0, ((void*)0), 16, resp);

 mtx_unlock(&sc->sc_mutex);

 if ((len < 1) || (resp[1] == 0)) {
  return;
 }

 if (resp[1] & PMU_INT_ADB) {






  mtx_lock(&sc->sc_mutex);

  if ((resp[2] & 0x0f) != (ADB_COMMAND_TALK << 2)) {
   if (sc->sc_autopoll) {
    uint8_t cmd[] = {0, PMU_SET_POLL_MASK,
        (sc->sc_autopoll >> 8) & 0xff,
        sc->sc_autopoll & 0xff};

    pmu_send(sc, PMU_ADB_CMD, 4, cmd, 16, junk);
   }
  }

  mtx_unlock(&sc->sc_mutex);

  adb_receive_raw_packet(sc->adb_bus,resp[1],resp[2],
   len - 3,&resp[3]);
 }
 if (resp[1] & PMU_INT_ENVIRONMENT) {

  if ((resp[2] & PMU_ENV_LID_CLOSED) && (!sc->lid_closed)) {
   sc->lid_closed = 1;
   devctl_notify("PMU", "lid", "close", ((void*)0));
  }
  else if (!(resp[2] & PMU_ENV_LID_CLOSED) && (sc->lid_closed)) {

   sc->lid_closed = 0;
   devctl_notify("PMU", "lid", "open", ((void*)0));
  }
  if (resp[2] & PMU_ENV_POWER)
   devctl_notify("PMU", "Button", "pressed", ((void*)0));
 }
}
