
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;


 int WARN_GIANTOK ;
 int WARN_SLEEPOK ;
 int WITNESS_WARN (int,int *,char*) ;
 int destroy_devl (struct cdev*) ;
 int dev_lock () ;
 int dev_unlock_and_free () ;

void
destroy_dev(struct cdev *dev)
{

 WITNESS_WARN(WARN_GIANTOK | WARN_SLEEPOK, ((void*)0), "destroy_dev");
 dev_lock();
 destroy_devl(dev);
 dev_unlock_and_free();
}
