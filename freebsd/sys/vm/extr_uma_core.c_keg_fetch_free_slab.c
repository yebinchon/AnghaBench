
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int * uma_slab_t ;
typedef TYPE_1__* uma_keg_t ;
typedef scalar_t__ uint32_t ;
struct TYPE_5__ {scalar_t__ uk_reserve; scalar_t__ uk_free; } ;


 int KEG_LOCK_ASSERT (TYPE_1__*) ;
 int M_USE_RESERVE ;
 int * keg_first_slab (TYPE_1__*,int,int) ;

__attribute__((used)) static uma_slab_t
keg_fetch_free_slab(uma_keg_t keg, int domain, bool rr, int flags)
{
 uint32_t reserve;

 KEG_LOCK_ASSERT(keg);

 reserve = (flags & M_USE_RESERVE) != 0 ? 0 : keg->uk_reserve;
 if (keg->uk_free <= reserve)
  return (((void*)0));
 return (keg_first_slab(keg, domain, rr));
}
