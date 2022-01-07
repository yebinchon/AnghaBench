
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ vm_offset_t ;
typedef scalar_t__ u_int ;
struct exec_args_kva {scalar_t__ gen; scalar_t__ addr; } ;


 scalar_t__ DPCPU_PTR (int ) ;
 int MADV_FREE ;
 int SLIST_INSERT_HEAD (int *,struct exec_args_kva*,int ) ;
 int atomic_cmpset_ptr (uintptr_t*,uintptr_t,uintptr_t) ;
 int exec_args_kva ;
 int exec_args_kva_freelist ;
 int exec_args_kva_mtx ;
 int exec_map ;
 scalar_t__ exec_map_entry_size ;
 int mtx_lock (int *) ;
 int mtx_unlock (int *) ;
 int next ;
 int vm_map_madvise (int ,scalar_t__,scalar_t__,int ) ;
 int wakeup_one (int *) ;

__attribute__((used)) static void
exec_release_args_kva(struct exec_args_kva *argkva, u_int gen)
{
 vm_offset_t base;

 base = argkva->addr;
 if (argkva->gen != gen) {
  (void)vm_map_madvise(exec_map, base, base + exec_map_entry_size,
      MADV_FREE);
  argkva->gen = gen;
 }
 if (!atomic_cmpset_ptr((uintptr_t *)DPCPU_PTR(exec_args_kva),
     (uintptr_t)((void*)0), (uintptr_t)argkva)) {
  mtx_lock(&exec_args_kva_mtx);
  SLIST_INSERT_HEAD(&exec_args_kva_freelist, argkva, next);
  wakeup_one(&exec_args_kva_freelist);
  mtx_unlock(&exec_args_kva_mtx);
 }
}
