
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_object_t ;


 int dev_pager_mtx ;
 int dev_pager_object_list ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vm_pager_object_lookup (int *,void*) ;

vm_object_t
cdev_pager_lookup(void *handle)
{
 vm_object_t object;

 mtx_lock(&dev_pager_mtx);
 object = vm_pager_object_lookup(&dev_pager_object_list, handle);
 mtx_unlock(&dev_pager_mtx);
 return (object);
}
