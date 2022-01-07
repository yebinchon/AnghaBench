
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;


 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int delist_dev_locked (struct cdev*) ;
 int dev_lock () ;
 int dev_unlock () ;

void
delist_dev(struct cdev *dev)
{

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0), "delist_dev");
 dev_lock();
 delist_dev_locked(dev);
 dev_unlock();
}
