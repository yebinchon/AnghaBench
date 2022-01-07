
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct thread {int dummy; } ;
struct cdev {int dummy; } ;
struct amr_softc {int amr_state; } ;


 int AMR_STATE_OPEN ;
 int debug_called (int) ;
 int dev2unit (struct cdev*) ;
 int devclass_find (char*) ;
 struct amr_softc* devclass_get_softc (int ,int) ;

__attribute__((used)) static int
amr_open(struct cdev *dev, int flags, int fmt, struct thread *td)
{
    int unit = dev2unit(dev);
    struct amr_softc *sc = devclass_get_softc(devclass_find("amr"), unit);

    debug_called(1);

    sc->amr_state |= AMR_STATE_OPEN;
    return(0);
}
