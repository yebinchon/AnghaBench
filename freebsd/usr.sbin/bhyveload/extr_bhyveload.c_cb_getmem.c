
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int ctx ;
 int vm_get_highmem_size (int ) ;
 int vm_get_lowmem_size (int ) ;

__attribute__((used)) static void
cb_getmem(void *arg, uint64_t *ret_lowmem, uint64_t *ret_highmem)
{

 *ret_lowmem = vm_get_lowmem_size(ctx);
 *ret_highmem = vm_get_highmem_size(ctx);
}
