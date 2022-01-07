
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tws_softc {int dummy; } ;
struct thread {int dummy; } ;
struct cdev {struct tws_softc* si_drv1; } ;


 int TWS_TRACE_DEBUG (struct tws_softc*,char*,struct cdev*,int) ;

int
tws_close(struct cdev *dev, int fflag, int devtype, struct thread *td)
{
    struct tws_softc *sc = dev->si_drv1;

    if ( sc )
        TWS_TRACE_DEBUG(sc, "entry", dev, fflag);
    return (0);
}
