
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef scalar_t__ vm_paddr_t ;


 int __syncicache (void*,int ) ;

__attribute__((used)) static void
moea_syncicache(vm_paddr_t pa, vm_size_t len)
{
 __syncicache((void *)pa, len);
}
