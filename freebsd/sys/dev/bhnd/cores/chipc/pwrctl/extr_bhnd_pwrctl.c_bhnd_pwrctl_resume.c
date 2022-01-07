
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pwrctl_softc {int dev; } ;
typedef int device_t ;


 int BHND_PWRCTL_WAR_UP ;
 int PWRCTL_LOCK (struct bhnd_pwrctl_softc*) ;
 int PWRCTL_UNLOCK (struct bhnd_pwrctl_softc*) ;
 int bhnd_pwrctl_init (struct bhnd_pwrctl_softc*) ;
 int bhnd_pwrctl_updateclk (struct bhnd_pwrctl_softc*,int ) ;
 struct bhnd_pwrctl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;

__attribute__((used)) static int
bhnd_pwrctl_resume(device_t dev)
{
 struct bhnd_pwrctl_softc *sc;
 int error;

 sc = device_get_softc(dev);

 PWRCTL_LOCK(sc);


 if ((error = bhnd_pwrctl_init(sc))) {
  device_printf(sc->dev, "PWRCTL init failed: %d\n", error);
  goto cleanup;
 }


 if ((error = bhnd_pwrctl_updateclk(sc, BHND_PWRCTL_WAR_UP))) {
  device_printf(sc->dev, "clock state restore failed: %d\n",
      error);
  goto cleanup;
 }

cleanup:
 PWRCTL_UNLOCK(sc);
 return (error);
}
