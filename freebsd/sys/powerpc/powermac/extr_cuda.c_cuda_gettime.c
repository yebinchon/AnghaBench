
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct timespec {scalar_t__ tv_nsec; scalar_t__ tv_sec; } ;
struct cuda_softc {int sc_rtc; int sc_mutex; } ;
typedef int device_t ;


 int CMD_READ_RTC ;
 int CUDA_PSEUDO ;
 scalar_t__ DIFF19041970 ;
 int cuda_send (struct cuda_softc*,int,int,int *) ;
 struct cuda_softc* device_get_softc (int ) ;
 int mtx_lock (int *) ;
 int mtx_sleep (int*,int *,int ,char*,int) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
cuda_gettime(device_t dev, struct timespec *ts)
{
 struct cuda_softc *sc = device_get_softc(dev);
 uint8_t cmd[] = {CUDA_PSEUDO, CMD_READ_RTC};

 mtx_lock(&sc->sc_mutex);
 sc->sc_rtc = -1;
 cuda_send(sc, 1, 2, cmd);
 if (sc->sc_rtc == -1)
  mtx_sleep(&sc->sc_rtc, &sc->sc_mutex, 0, "rtc", 100);

 ts->tv_sec = sc->sc_rtc - DIFF19041970;
 ts->tv_nsec = 0;
 mtx_unlock(&sc->sc_mutex);

 return (0);
}
