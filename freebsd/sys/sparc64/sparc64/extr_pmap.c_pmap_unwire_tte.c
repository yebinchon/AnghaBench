
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int vm_offset_t ;
struct tte {int tte_data; } ;
typedef TYPE_2__* pmap_t ;
struct TYPE_6__ {int wired_count; } ;
struct TYPE_7__ {TYPE_1__ pm_stats; } ;


 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (TYPE_2__*,int ) ;
 int TD_WIRED ;
 int atomic_clear_long (int*,int) ;
 int panic (char*,struct tte*) ;

__attribute__((used)) static int
pmap_unwire_tte(pmap_t pm, pmap_t pm2, struct tte *tp, vm_offset_t va)
{

 PMAP_LOCK_ASSERT(pm, MA_OWNED);
 if ((tp->tte_data & TD_WIRED) == 0)
  panic("pmap_unwire_tte: tp %p is missing TD_WIRED", tp);
 atomic_clear_long(&tp->tte_data, TD_WIRED);
 pm->pm_stats.wired_count--;
 return (1);
}
