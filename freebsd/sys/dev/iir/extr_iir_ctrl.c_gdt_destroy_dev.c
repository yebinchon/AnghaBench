
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cdev {int dummy; } ;


 int destroy_dev (struct cdev*) ;

void
gdt_destroy_dev(struct cdev *dev)
{
    if (dev != ((void*)0))
        destroy_dev(dev);
}
