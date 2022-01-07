
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;


 int destroy_dev_sched_cbl (struct cdev*,void (*) (void*),void*) ;
 int dev_lock () ;

int
destroy_dev_sched_cb(struct cdev *dev, void (*cb)(void *), void *arg)
{

 dev_lock();
 return (destroy_dev_sched_cbl(dev, cb, arg));
}
