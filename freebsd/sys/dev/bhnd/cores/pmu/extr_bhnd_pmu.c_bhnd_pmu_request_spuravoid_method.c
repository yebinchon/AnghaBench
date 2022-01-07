
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pmu_softc {int dummy; } ;
typedef int device_t ;
typedef int bhnd_pmu_spuravoid ;


 int BPMU_LOCK (struct bhnd_pmu_softc*) ;
 int BPMU_UNLOCK (struct bhnd_pmu_softc*) ;
 int bhnd_pmu_set_spuravoid (struct bhnd_pmu_softc*,int ) ;
 struct bhnd_pmu_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pmu_request_spuravoid_method(device_t dev, bhnd_pmu_spuravoid spuravoid)
{
 struct bhnd_pmu_softc *sc;
 int error;

 sc = device_get_softc(dev);

 BPMU_LOCK(sc);
 error = bhnd_pmu_set_spuravoid(sc, spuravoid);
 BPMU_UNLOCK(sc);

 return (error);
}
