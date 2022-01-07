
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ num; scalar_t__ windex; scalar_t__ rindex; } ;
struct ps2mouse_softc {int ctrlenable; int mtx; TYPE_1__ fifo; } ;


 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;

void
ps2mouse_toggle(struct ps2mouse_softc *sc, int enable)
{
 pthread_mutex_lock(&sc->mtx);
 if (enable)
  sc->ctrlenable = 1;
 else {
  sc->ctrlenable = 0;
  sc->fifo.rindex = 0;
  sc->fifo.windex = 0;
  sc->fifo.num = 0;
 }
 pthread_mutex_unlock(&sc->mtx);
}
