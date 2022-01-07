
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bhnd_pwrctl_softc {int clkres_list; } ;
struct bhnd_pwrctl_clkres {scalar_t__ clock; int owner; } ;
typedef int device_t ;
typedef scalar_t__ bhnd_clock ;


 scalar_t__ BHND_CLOCK_DYN ;
 int BHND_PWRCTL_WAR_RUN ;
 int ENOMEM ;
 int KASSERT (int,char*) ;
 int M_DEVBUF ;
 int M_NOWAIT ;
 int PWRCTL_LOCK (struct bhnd_pwrctl_softc*) ;
 int PWRCTL_UNLOCK (struct bhnd_pwrctl_softc*) ;
 int STAILQ_INSERT_TAIL (int *,struct bhnd_pwrctl_clkres*,int ) ;
 int STAILQ_REMOVE (int *,struct bhnd_pwrctl_clkres*,int ,int ) ;
 int bhnd_pwrctl_clkres ;
 struct bhnd_pwrctl_clkres* bhnd_pwrctl_find_res (struct bhnd_pwrctl_softc*,int ) ;
 int bhnd_pwrctl_updateclk (struct bhnd_pwrctl_softc*,int ) ;
 int cr_link ;
 struct bhnd_pwrctl_softc* device_get_softc (int ) ;
 int device_printf (int ,char*,int) ;
 int free (struct bhnd_pwrctl_clkres*,int ) ;
 struct bhnd_pwrctl_clkres* malloc (int,int ,int ) ;

__attribute__((used)) static int
bhnd_pwrctl_request_clock(device_t dev, device_t child, bhnd_clock clock)
{
 struct bhnd_pwrctl_softc *sc;
 struct bhnd_pwrctl_clkres *clkres;
 int error;

 sc = device_get_softc(dev);
 error = 0;

 PWRCTL_LOCK(sc);

 clkres = bhnd_pwrctl_find_res(sc, child);


 if (clock == BHND_CLOCK_DYN) {

  if (clkres == ((void*)0)) {
   PWRCTL_UNLOCK(sc);
   return (0);
  }


  STAILQ_REMOVE(&sc->clkres_list, clkres,
      bhnd_pwrctl_clkres, cr_link);

  if ((error = bhnd_pwrctl_updateclk(sc, BHND_PWRCTL_WAR_RUN))) {
   device_printf(dev, "clock transition failed: %d\n",
       error);


   STAILQ_INSERT_TAIL(&sc->clkres_list, clkres, cr_link);

   PWRCTL_UNLOCK(sc);
   return (error);
  }


  free(clkres, M_DEVBUF);

  PWRCTL_UNLOCK(sc);
  return (0);
 }


 if (clkres == ((void*)0)) {
  clkres = malloc(sizeof(struct bhnd_pwrctl_clkres), M_DEVBUF,
      M_NOWAIT);
  if (clkres == ((void*)0))
   return (ENOMEM);

  clkres->owner = child;
  clkres->clock = clock;

  STAILQ_INSERT_TAIL(&sc->clkres_list, clkres, cr_link);
 } else {
  KASSERT(clkres->owner == child, ("invalid owner"));
  clkres->clock = clock;
 }


 error = bhnd_pwrctl_updateclk(sc, BHND_PWRCTL_WAR_RUN);
 if (error) {
  STAILQ_REMOVE(&sc->clkres_list, clkres, bhnd_pwrctl_clkres,
      cr_link);
  free(clkres, M_DEVBUF);
 }

 PWRCTL_UNLOCK(sc);
 return (error);
}
