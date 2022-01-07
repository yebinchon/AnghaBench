
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev_priv {int cdp_flags; void (* cdp_dtr_cb ) (void*) ;void* cdp_dtr_cb_arg; } ;
struct cdev {int dummy; } ;


 int CDP_SCHED_DTR ;
 int MA_OWNED ;
 int TAILQ_INSERT_TAIL (int *,struct cdev_priv*,int ) ;
 struct cdev_priv* cdev2priv (struct cdev*) ;
 int cdp_dtr_list ;
 int dev_ddtr ;
 int dev_dtr_task ;
 int dev_refl (struct cdev*) ;
 int dev_unlock () ;
 int devmtx ;
 int mtx_assert (int *,int ) ;
 int taskqueue_enqueue (int ,int *) ;
 int taskqueue_swi_giant ;

__attribute__((used)) static int
destroy_dev_sched_cbl(struct cdev *dev, void (*cb)(void *), void *arg)
{
 struct cdev_priv *cp;

 mtx_assert(&devmtx, MA_OWNED);
 cp = cdev2priv(dev);
 if (cp->cdp_flags & CDP_SCHED_DTR) {
  dev_unlock();
  return (0);
 }
 dev_refl(dev);
 cp->cdp_flags |= CDP_SCHED_DTR;
 cp->cdp_dtr_cb = cb;
 cp->cdp_dtr_cb_arg = arg;
 TAILQ_INSERT_TAIL(&dev_ddtr, cp, cdp_dtr_list);
 dev_unlock();
 taskqueue_enqueue(taskqueue_swi_giant, &dev_dtr_task);
 return (1);
}
