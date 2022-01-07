
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int list; scalar_t__ map; int timer; } ;
struct mthca_dev {TYPE_1__ catas_err; } ;


 int catas_lock ;
 int del_timer_sync (int *) ;
 int iounmap (scalar_t__) ;
 int list_del (int *) ;
 int spin_lock_irq (int *) ;
 int spin_unlock_irq (int *) ;

void mthca_stop_catas_poll(struct mthca_dev *dev)
{
 del_timer_sync(&dev->catas_err.timer);

 if (dev->catas_err.map)
  iounmap(dev->catas_err.map);

 spin_lock_irq(&catas_lock);
 list_del(&dev->catas_err.list);
 spin_unlock_irq(&catas_lock);
}
