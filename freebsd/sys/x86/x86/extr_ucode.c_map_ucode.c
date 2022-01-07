
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_paddr_t ;


 scalar_t__ PAGE_SIZE ;
 int pmap_kenter (uintptr_t,int ) ;

__attribute__((used)) static void *
map_ucode(uintptr_t free, size_t len)
{






 (void)len;

 return ((void *)free);
}
