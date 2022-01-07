
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;


 int destroy_dev_sched_cb (struct cdev*,int *,int *) ;

int
destroy_dev_sched(struct cdev *dev)
{

 return (destroy_dev_sched_cb(dev, ((void*)0), ((void*)0)));
}
