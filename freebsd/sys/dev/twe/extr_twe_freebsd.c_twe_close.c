
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct twe_softc {int twe_state; } ;
struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;


 int TWE_IO_LOCK (struct twe_softc*) ;
 int TWE_IO_UNLOCK (struct twe_softc*) ;
 int TWE_STATE_OPEN ;

__attribute__((used)) static int
twe_close(struct cdev *dev, int flags, int fmt, struct thread *td)
{
    struct twe_softc *sc = (struct twe_softc *)dev->si_drv1;

    TWE_IO_LOCK(sc);
    sc->twe_state &= ~TWE_STATE_OPEN;
    TWE_IO_UNLOCK(sc);
    return (0);
}
