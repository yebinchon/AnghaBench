
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct timespec {scalar_t__ tv_sec; } ;
struct pmu_softc {int sc_mutex; } ;
typedef int sec ;
typedef int device_t ;


 scalar_t__ DIFF19041970 ;
 int PMU_SET_RTC ;
 struct pmu_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmu_send (struct pmu_softc*,int ,int,int *,int ,int *) ;

__attribute__((used)) static int
pmu_settime(device_t dev, struct timespec *ts)
{
 struct pmu_softc *sc = device_get_softc(dev);
 uint32_t sec;

 sec = ts->tv_sec + DIFF19041970;

 mtx_lock(&sc->sc_mutex);
 pmu_send(sc, PMU_SET_RTC, sizeof(sec), (uint8_t *)&sec, 0, ((void*)0));
 mtx_unlock(&sc->sc_mutex);

 return (0);
}
