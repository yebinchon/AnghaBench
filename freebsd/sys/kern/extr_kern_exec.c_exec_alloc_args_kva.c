
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_offset_t ;
struct exec_args_kva {int addr; } ;


 scalar_t__ DPCPU_PTR (int ) ;
 struct exec_args_kva* SLIST_FIRST (int *) ;
 int SLIST_REMOVE_HEAD (int *,int ) ;
 scalar_t__ atomic_readandclear_ptr (uintptr_t*) ;
 int exec_args_kva ;
 int exec_args_kva_freelist ;
 int exec_args_kva_mtx ;
 int mtx_lock (int *) ;
 int mtx_sleep (int *,int *,int ,char*,int ) ;
 int mtx_unlock (int *) ;
 int next ;

__attribute__((used)) static vm_offset_t
exec_alloc_args_kva(void **cookie)
{
 struct exec_args_kva *argkva;

 argkva = (void *)atomic_readandclear_ptr(
     (uintptr_t *)DPCPU_PTR(exec_args_kva));
 if (argkva == ((void*)0)) {
  mtx_lock(&exec_args_kva_mtx);
  while ((argkva = SLIST_FIRST(&exec_args_kva_freelist)) == ((void*)0))
   (void)mtx_sleep(&exec_args_kva_freelist,
       &exec_args_kva_mtx, 0, "execkva", 0);
  SLIST_REMOVE_HEAD(&exec_args_kva_freelist, next);
  mtx_unlock(&exec_args_kva_mtx);
 }
 *(struct exec_args_kva **)cookie = argkva;
 return (argkva->addr);
}
