
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct mly_softc {int mly_state; } ;
struct cdev {struct mly_softc* si_drv1; } ;


 int MLY_LOCK (struct mly_softc*) ;
 int MLY_STATE_OPEN ;
 int MLY_UNLOCK (struct mly_softc*) ;

__attribute__((used)) static int
mly_user_close(struct cdev *dev, int flags, int fmt, struct thread *td)
{
    struct mly_softc *sc = dev->si_drv1;

    MLY_LOCK(sc);
    sc->mly_state &= ~MLY_STATE_OPEN;
    MLY_UNLOCK(sc);
    return (0);
}
