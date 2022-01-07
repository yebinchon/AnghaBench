
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* uma_zone_t ;
typedef int * uma_slab_t ;
typedef int * uma_keg_t ;
struct TYPE_4__ {int * uz_keg; } ;


 int KEG_LOCK (int *) ;
 int KEG_UNLOCK (int *) ;
 int M_NOVM ;
 int M_NOWAIT ;
 int * keg_fetch_slab (int *,TYPE_1__*,int,int) ;

__attribute__((used)) static uma_slab_t
zone_fetch_slab(uma_zone_t zone, uma_keg_t keg, int domain, int flags)
{
 uma_slab_t slab;

 if (keg == ((void*)0)) {
  keg = zone->uz_keg;
  KEG_LOCK(keg);
 }

 for (;;) {
  slab = keg_fetch_slab(keg, zone, domain, flags);
  if (slab)
   return (slab);
  if (flags & (M_NOWAIT | M_NOVM))
   break;
 }
 KEG_UNLOCK(keg);
 return (((void*)0));
}
