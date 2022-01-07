
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ledsc {struct cdev* dev; void* private; int (* func ) (void*,int) ;int unit; int name; } ;
struct cdev {struct ledsc* si_drv1; } ;
typedef int (* led_t ) (void*,int) ;


 int GID_WHEEL ;
 int LIST_INSERT_HEAD (int *,struct ledsc*,int ) ;
 int M_LED ;
 int M_WAITOK ;
 int M_ZERO ;
 int UID_ROOT ;
 int alloc_unr (int ) ;
 int led_cdevsw ;
 int led_list ;
 int led_mtx ;
 int led_sx ;
 int led_unit ;
 int list ;
 struct cdev* make_dev (int *,int ,int ,int ,int,char*,char const*) ;
 struct ledsc* malloc (int,int ,int) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int strdup (char const*,int ) ;
 int stub1 (void*,int) ;
 int sx_xlock (int *) ;
 int sx_xunlock (int *) ;

struct cdev *
led_create_state(led_t *func, void *priv, char const *name, int state)
{
 struct ledsc *sc;

 sc = malloc(sizeof *sc, M_LED, M_WAITOK | M_ZERO);

 sx_xlock(&led_sx);
 sc->name = strdup(name, M_LED);
 sc->unit = alloc_unr(led_unit);
 sc->private = priv;
 sc->func = func;
 sc->dev = make_dev(&led_cdevsw, sc->unit,
     UID_ROOT, GID_WHEEL, 0600, "led/%s", name);
 sx_xunlock(&led_sx);

 mtx_lock(&led_mtx);
 sc->dev->si_drv1 = sc;
 LIST_INSERT_HEAD(&led_list, sc, list);
 if (state != -1)
  sc->func(sc->private, state != 0);
 mtx_unlock(&led_mtx);

 return (sc->dev);
}
