
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct amdtemp_softc {int sc_ncores; int ** sc_sysctl_cpu; } ;
typedef int device_t ;


 struct amdtemp_softc* device_get_softc (int ) ;
 int sysctl_remove_oid (int *,int,int ) ;

int
amdtemp_detach(device_t dev)
{
 struct amdtemp_softc *sc = device_get_softc(dev);
 int i;

 for (i = 0; i < sc->sc_ncores; i++)
  if (sc->sc_sysctl_cpu[i] != ((void*)0))
   sysctl_remove_oid(sc->sc_sysctl_cpu[i], 1, 0);



 return (0);
}
