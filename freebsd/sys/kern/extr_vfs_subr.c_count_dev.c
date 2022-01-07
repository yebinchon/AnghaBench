
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int si_usecount; } ;


 int dev_lock () ;
 int dev_unlock () ;

int
count_dev(struct cdev *dev)
{
 int count;

 dev_lock();
 count = dev->si_usecount;
 dev_unlock();
 return(count);
}
