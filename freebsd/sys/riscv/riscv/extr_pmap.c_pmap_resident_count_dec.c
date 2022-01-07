
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_2__* pmap_t ;
struct TYPE_5__ {int resident_count; } ;
struct TYPE_6__ {TYPE_1__ pm_stats; } ;


 int KASSERT (int,char*) ;
 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;

__attribute__((used)) static __inline void
pmap_resident_count_dec(pmap_t pmap, int count)
{

 PMAP_LOCK_ASSERT(pmap, MA_OWNED);
 KASSERT(pmap->pm_stats.resident_count >= count,
     ("pmap %p resident count underflow %ld %d", pmap,
     pmap->pm_stats.resident_count, count));
 pmap->pm_stats.resident_count -= count;
}
