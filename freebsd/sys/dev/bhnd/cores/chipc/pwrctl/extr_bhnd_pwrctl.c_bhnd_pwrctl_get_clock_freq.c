
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_pwrctl_softc {int dummy; } ;
typedef int device_t ;
typedef int bhnd_clock ;






 int BPMU_LOCK (struct bhnd_pwrctl_softc*) ;
 int BPMU_UNLOCK (struct bhnd_pwrctl_softc*) ;
 int ENODEV ;
 int bhnd_pwrctl_getclk_speed (struct bhnd_pwrctl_softc*) ;
 struct bhnd_pwrctl_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pwrctl_get_clock_freq(device_t dev, bhnd_clock clock, u_int *freq)
{
 struct bhnd_pwrctl_softc *sc = device_get_softc(dev);

 switch (clock) {
 case 131:
  BPMU_LOCK(sc);
  *freq = bhnd_pwrctl_getclk_speed(sc);
  BPMU_UNLOCK(sc);

  return (0);

 case 129:
 case 128:
 case 130:
 default:
  return (ENODEV);
 }
}
