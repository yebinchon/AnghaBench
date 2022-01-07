
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int u_int ;
typedef int u_char ;
struct pmu_softc {int sc_mutex; } ;
typedef int device_t ;


 int PMU_ADB_CMD ;
 struct pmu_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmu_poll (int ) ;
 int pmu_send (struct pmu_softc*,int ,int,int*,int,int*) ;

__attribute__((used)) static u_int
pmu_adb_send(device_t dev, u_char command_byte, int len, u_char *data,
    u_char poll)
{
 struct pmu_softc *sc = device_get_softc(dev);
 int i,replen;
 uint8_t packet[16], resp[16];



 packet[0] = command_byte;

 packet[1] = 0;
 packet[2] = len;
 for (i = 0; i < len; i++)
  packet[i + 3] = data[i];

 mtx_lock(&sc->sc_mutex);
 replen = pmu_send(sc, PMU_ADB_CMD, len + 3, packet, 16, resp);
 mtx_unlock(&sc->sc_mutex);

 if (poll)
  pmu_poll(dev);

 return 0;
}
