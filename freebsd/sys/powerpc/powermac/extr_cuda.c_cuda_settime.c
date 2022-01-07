
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef scalar_t__ uint32_t ;
struct timespec {scalar_t__ tv_sec; } ;
struct cuda_softc {int sc_mutex; } ;
typedef int sec ;
typedef int device_t ;


 int CMD_WRITE_RTC ;
 int CUDA_PSEUDO ;
 scalar_t__ DIFF19041970 ;
 int cuda_send (struct cuda_softc*,int ,int,int *) ;
 struct cuda_softc* device_get_softc (int ) ;
 int memcpy (int *,scalar_t__*,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int
cuda_settime(device_t dev, struct timespec *ts)
{
 struct cuda_softc *sc = device_get_softc(dev);
 uint8_t cmd[] = {CUDA_PSEUDO, CMD_WRITE_RTC, 0, 0, 0, 0};
 uint32_t sec;

 sec = ts->tv_sec + DIFF19041970;
 memcpy(&cmd[2], &sec, sizeof(sec));

 mtx_lock(&sc->sc_mutex);
 cuda_send(sc, 0, 6, cmd);
 mtx_unlock(&sc->sc_mutex);

 return (0);
}
