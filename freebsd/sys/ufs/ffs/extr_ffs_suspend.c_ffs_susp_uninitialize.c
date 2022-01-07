
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int destroy_dev (int ) ;
 int ffs_susp_dev ;
 int ffs_susp_lock ;
 int sx_destroy (int *) ;

void
ffs_susp_uninitialize(void)
{

 destroy_dev(ffs_susp_dev);
 sx_destroy(&ffs_susp_lock);
}
