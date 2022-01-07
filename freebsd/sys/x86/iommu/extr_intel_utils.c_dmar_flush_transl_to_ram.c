
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dmar_unit {int dummy; } ;


 scalar_t__ DMAR_IS_COHERENT (struct dmar_unit*) ;
 int pmap_force_invalidate_cache_range (uintptr_t,uintptr_t) ;

__attribute__((used)) static void
dmar_flush_transl_to_ram(struct dmar_unit *unit, void *dst, size_t sz)
{

 if (DMAR_IS_COHERENT(unit))
  return;




 pmap_force_invalidate_cache_range((uintptr_t)dst, (uintptr_t)dst + sz);
}
