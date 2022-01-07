
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct pmu_softc {int sc_dev; int sc_mutex; } ;
struct pmu_battstate {int state; int charge; int maxcharge; int voltage; int current; } ;
typedef int int8_t ;
typedef int int16_t ;


 int PMU_SMART_BATTERY_STATE ;
 int device_printf (int ,char*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmu_send (struct pmu_softc*,int ,int,int*,int,int*) ;

__attribute__((used)) static int
pmu_query_battery(struct pmu_softc *sc, int batt, struct pmu_battstate *info)
{
 uint8_t reg;
 uint8_t resp[16];
 int len;

 reg = batt + 1;

 mtx_lock(&sc->sc_mutex);
 len = pmu_send(sc, PMU_SMART_BATTERY_STATE, 1, &reg, 16, resp);
 mtx_unlock(&sc->sc_mutex);

 if (len < 3)
  return (-1);






 info->state = resp[2];

 switch (resp[1]) {
 case 3:
 case 4:
  info->charge = resp[3];
  info->maxcharge = resp[4];

  info->current = (int8_t)resp[5];
  info->voltage = resp[6];
  break;
 case 5:
  info->charge = (resp[3] << 8) | resp[4];
  info->maxcharge = (resp[5] << 8) | resp[6];

  info->current = (int16_t)((resp[7] << 8) | resp[8]);
  info->voltage = (resp[9] << 8) | resp[10];
  break;
 default:
  device_printf(sc->sc_dev, "Unknown battery info format (%d)!\n",
      resp[1]);
  return (-1);
 }

 return (0);
}
