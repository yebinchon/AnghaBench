
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct vtballoon_softc {scalar_t__ vtballoon_current_npages; int vtballoon_flags; int vtballoon_timeout; scalar_t__ vtballoon_desired_npages; } ;


 int VTBALLOON_FLAG_DETACH ;
 int VTBALLOON_LOCK (struct vtballoon_softc*) ;
 int VTBALLOON_MTX (struct vtballoon_softc*) ;
 int VTBALLOON_UNLOCK (struct vtballoon_softc*) ;
 int msleep (struct vtballoon_softc*,int ,int ,char*,int) ;
 scalar_t__ vtballoon_desired_size (struct vtballoon_softc*) ;

__attribute__((used)) static int
vtballoon_sleep(struct vtballoon_softc *sc)
{
 int rc, timeout;
 uint32_t current, desired;

 rc = 0;
 current = sc->vtballoon_current_npages;

 VTBALLOON_LOCK(sc);
 for (;;) {
  if (sc->vtballoon_flags & VTBALLOON_FLAG_DETACH) {
   rc = 1;
   break;
  }

  desired = vtballoon_desired_size(sc);
  sc->vtballoon_desired_npages = desired;







  timeout = sc->vtballoon_timeout;
  sc->vtballoon_timeout = 0;

  if (current > desired)
   break;
  if (current < desired && timeout == 0)
   break;

  msleep(sc, VTBALLOON_MTX(sc), 0, "vtbslp", timeout);
 }
 VTBALLOON_UNLOCK(sc);

 return (rc);
}
