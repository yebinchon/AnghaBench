
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MPASS (int ) ;
 int destroy_dev (int *) ;
 int * fuse_dev ;

void
fuse_device_destroy(void)
{

 MPASS(fuse_dev != ((void*)0));
 destroy_dev(fuse_dev);
}
