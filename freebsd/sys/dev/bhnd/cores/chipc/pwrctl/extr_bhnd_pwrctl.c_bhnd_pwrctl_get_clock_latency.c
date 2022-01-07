
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_pwrctl_softc {int dummy; } ;
typedef int device_t ;
typedef int bhnd_clock ;



 int ENODEV ;
 int PWRCTL_LOCK (struct bhnd_pwrctl_softc*) ;
 int PWRCTL_UNLOCK (struct bhnd_pwrctl_softc*) ;
 int bhnd_pwrctl_fast_pwrup_delay (struct bhnd_pwrctl_softc*) ;
 struct bhnd_pwrctl_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pwrctl_get_clock_latency(device_t dev, bhnd_clock clock,
    u_int *latency)
{
 struct bhnd_pwrctl_softc *sc = device_get_softc(dev);

 switch (clock) {
 case 128:
  PWRCTL_LOCK(sc);
  *latency = bhnd_pwrctl_fast_pwrup_delay(sc);
  PWRCTL_UNLOCK(sc);

  return (0);

 default:
  return (ENODEV);
 }
}
