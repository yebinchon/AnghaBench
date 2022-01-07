
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int vm_size_t ;
typedef int uma_zone_t ;
typedef int uint8_t ;


 int DOMAINSET_FIXED (int) ;
 int UMA_SLAB_KERNEL ;
 scalar_t__ kmem_malloc_domainset (int ,int ,int) ;

__attribute__((used)) static void *
page_alloc(uma_zone_t zone, vm_size_t bytes, int domain, uint8_t *pflag,
    int wait)
{
 void *p;

 *pflag = UMA_SLAB_KERNEL;
 p = (void *)kmem_malloc_domainset(DOMAINSET_FIXED(domain), bytes, wait);

 return (p);
}
