
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int pmap_t ;


 int pmap_call_on_active_cpus (int ,void (*) (void*),int ) ;
 scalar_t__ tlb_invalidate_all_user ;

__attribute__((used)) static void
pmap_invalidate_all(pmap_t pmap)
{

 pmap_call_on_active_cpus(pmap,
     (void (*)(void *))tlb_invalidate_all_user, pmap);
}
