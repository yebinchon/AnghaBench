
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ledsc {struct ledsc* name; int * spec; int unit; int * ptr; } ;
struct cdev {struct ledsc* si_drv1; } ;


 scalar_t__ LIST_EMPTY (int *) ;
 int LIST_REMOVE (struct ledsc*,int ) ;
 int M_LED ;
 int blinkers ;
 int callout_stop (int *) ;
 int destroy_dev (struct cdev*) ;
 int free (struct ledsc*,int ) ;
 int free_unr (int ,int ) ;
 int led_ch ;
 int led_list ;
 int led_mtx ;
 int led_sx ;
 int led_unit ;
 int list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int sbuf_delete (int *) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

void
led_destroy(struct cdev *dev)
{
 struct ledsc *sc;

 mtx_lock(&led_mtx);
 sc = dev->si_drv1;
 dev->si_drv1 = ((void*)0);
 if (sc->ptr != ((void*)0))
  blinkers--;
 LIST_REMOVE(sc, list);
 if (LIST_EMPTY(&led_list))
  callout_stop(&led_ch);
 mtx_unlock(&led_mtx);

 sx_xlock(&led_sx);
 free_unr(led_unit, sc->unit);
 destroy_dev(dev);
 if (sc->spec != ((void*)0))
  sbuf_delete(sc->spec);
 free(sc->name, M_LED);
 free(sc, M_LED);
 sx_xunlock(&led_sx);
}
