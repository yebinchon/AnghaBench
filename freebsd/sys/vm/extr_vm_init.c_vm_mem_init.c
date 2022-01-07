
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int domainset_init () ;
 int domainset_zero () ;
 int kmem_init (int ,int ) ;
 int kmem_init_zero_region () ;
 int pmap_init () ;
 int uma_startup1 () ;
 int uma_startup2 () ;
 int virtual_avail ;
 int virtual_end ;
 int vm_map_startup () ;
 int vm_object_init () ;
 int vm_page_startup (int ) ;
 int vm_pager_init () ;
 int vm_radix_reserve_kva () ;
 int vm_set_page_size () ;
 int vmem_startup () ;

__attribute__((used)) static void
vm_mem_init(void *dummy)
{




 domainset_init();





 vm_set_page_size();
 virtual_avail = vm_page_startup(virtual_avail);





 domainset_zero();
 vmem_startup();
 vm_object_init();
 vm_map_startup();
 kmem_init(virtual_avail, virtual_end);



 vm_radix_reserve_kva();


 uma_startup2();
 kmem_init_zero_region();
 pmap_init();
 vm_pager_init();
}
