
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {TYPE_1__* si_drv1; } ;
struct TYPE_2__ {int queue_mtx; int state; } ;
typedef TYPE_1__ ips_softc_t ;


 int IPS_DEV_OPEN ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;

__attribute__((used)) static int ips_close(struct cdev *dev, int flags, int fmt, struct thread *td)
{
 ips_softc_t *sc = dev->si_drv1;

 mtx_lock(&sc->queue_mtx);
 sc->state &= ~IPS_DEV_OPEN;
 mtx_unlock(&sc->queue_mtx);

        return 0;
}
