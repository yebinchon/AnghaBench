
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct thread {int dummy; } ;
struct cdev {scalar_t__ si_drv1; } ;
struct TYPE_2__ {int daemon_busy; int pending_mutex; int hv_kvp_selinfo; } ;
typedef TYPE_1__ hv_kvp_sc ;


 int POLLIN ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int selrecord (struct thread*,int *) ;

__attribute__((used)) static int
hv_kvp_dev_daemon_poll(struct cdev *dev, int events, struct thread *td)
{
 int revents = 0;
 hv_kvp_sc *sc = (hv_kvp_sc*)dev->si_drv1;

 mtx_lock(&sc->pending_mutex);






 if (sc->daemon_busy == 1)
  revents = POLLIN;
 else
  selrecord(td, &sc->hv_kvp_selinfo);

 mtx_unlock(&sc->pending_mutex);

 return (revents);
}
