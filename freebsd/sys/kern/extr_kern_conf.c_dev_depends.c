
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;


 int dev_dependsl (struct cdev*,struct cdev*) ;
 int dev_lock () ;
 int dev_unlock () ;

void
dev_depends(struct cdev *pdev, struct cdev *cdev)
{

 dev_lock();
 dev_dependsl(pdev, cdev);
 dev_unlock();
}
