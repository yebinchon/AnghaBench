
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;
struct cdev_priv {int cdp_flags; void (* cdp_dtr_cb ) (void*) ;void* cdp_dtr_cb_arg; struct cdev cdp_c; } ;


 int CDP_SCHED_DTR ;
 int KASSERT (int,char*) ;
 int TAILQ_EMPTY (int *) ;
 struct cdev_priv* TAILQ_FIRST (int *) ;
 int TAILQ_REMOVE (int *,struct cdev_priv*,int ) ;
 int cdp_dtr_list ;
 int destroy_devl (struct cdev*) ;
 int dev_ddtr ;
 int dev_lock () ;
 int dev_rel (struct cdev*) ;
 int dev_unlock () ;
 int dev_unlock_and_free () ;

__attribute__((used)) static void
destroy_dev_tq(void *ctx, int pending)
{
 struct cdev_priv *cp;
 struct cdev *dev;
 void (*cb)(void *);
 void *cb_arg;

 dev_lock();
 while (!TAILQ_EMPTY(&dev_ddtr)) {
  cp = TAILQ_FIRST(&dev_ddtr);
  dev = &cp->cdp_c;
  KASSERT(cp->cdp_flags & CDP_SCHED_DTR,
      ("cdev %p in dev_destroy_tq without CDP_SCHED_DTR", cp));
  TAILQ_REMOVE(&dev_ddtr, cp, cdp_dtr_list);
  cb = cp->cdp_dtr_cb;
  cb_arg = cp->cdp_dtr_cb_arg;
  destroy_devl(dev);
  dev_unlock_and_free();
  dev_rel(dev);
  if (cb != ((void*)0))
   cb(cb_arg);
  dev_lock();
 }
 dev_unlock();
}
