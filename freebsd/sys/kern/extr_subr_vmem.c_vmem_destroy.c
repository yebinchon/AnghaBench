
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vmem_t ;


 int LIST_REMOVE (int *,int ) ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int vm_alllist ;
 int vmem_destroy1 (int *) ;
 int vmem_list_lock ;

void
vmem_destroy(vmem_t *vm)
{

 mtx_lock(&vmem_list_lock);
 LIST_REMOVE(vm, vm_alllist);
 mtx_unlock(&vmem_list_lock);

 vmem_destroy1(vm);
}
