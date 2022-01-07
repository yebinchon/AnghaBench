
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pwrctl_softc {int dummy; } ;
typedef int device_t ;


 int BHND_PWRCTL_WAR_DOWN ;
 int PWRCTL_LOCK (struct bhnd_pwrctl_softc*) ;
 int PWRCTL_UNLOCK (struct bhnd_pwrctl_softc*) ;
 int bhnd_pwrctl_updateclk (struct bhnd_pwrctl_softc*,int ) ;
 struct bhnd_pwrctl_softc* device_get_softc (int ) ;

__attribute__((used)) static int
bhnd_pwrctl_suspend(device_t dev)
{
 struct bhnd_pwrctl_softc *sc;
 int error;

 sc = device_get_softc(dev);


 PWRCTL_LOCK(sc);
 error = bhnd_pwrctl_updateclk(sc, BHND_PWRCTL_WAR_DOWN);
 PWRCTL_UNLOCK(sc);

 return (error);
}
