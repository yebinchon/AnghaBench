
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct pmu_softc {int sc_mutex; } ;
typedef int device_t ;


 scalar_t__ DIFF19041970 ;
 int PMU_READ_RTC ;
 struct pmu_softc* device_get_softc (int ) ;
 int memcpy (scalar_t__*,int *,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int pmu_send (struct pmu_softc*,int ,int ,int *,int,int *) ;

__attribute__((used)) static int
pmu_gettime(device_t dev, struct timespec *ts)
{
 struct pmu_softc *sc = device_get_softc(dev);
 uint8_t resp[16];
 uint32_t sec;

 mtx_lock(&sc->sc_mutex);
 pmu_send(sc, PMU_READ_RTC, 0, ((void*)0), 16, resp);
 mtx_unlock(&sc->sc_mutex);

 memcpy(&sec, &resp[1], 4);
 ts->tv_sec = sec - DIFF19041970;
 ts->tv_nsec = 0;

 return (0);
}
