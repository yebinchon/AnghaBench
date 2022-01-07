
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int ;
struct bhnd_pmu_softc {int dummy; } ;
typedef int device_t ;
typedef int bhnd_clock ;



 int BPMU_LOCK (struct bhnd_pmu_softc*) ;
 int BPMU_UNLOCK (struct bhnd_pmu_softc*) ;
 int ENODEV ;
 int bhnd_pmu_fast_pwrup_delay (struct bhnd_pmu_softc*,int *) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pmu_get_clock_latency_method(device_t dev, bhnd_clock clock,
    u_int *latency)
{
 struct bhnd_pmu_softc *sc;
 u_int pwrup_delay;
 int error;

 sc = device_get_softc(dev);

 switch (clock) {
 case 128:
  BPMU_LOCK(sc);
  error = bhnd_pmu_fast_pwrup_delay(sc, &pwrup_delay);
  BPMU_UNLOCK(sc);

  if (error)
   return (error);

  *latency = pwrup_delay;
  return (0);

 default:
  return (ENODEV);
 }
}
