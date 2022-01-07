
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct slb {int dummy; } ;
typedef TYPE_1__* pmap_t ;
struct TYPE_4__ {int pm_slb_len; struct slb** pm_slb; } ;


 int MA_OWNED ;
 int PMAP_LOCK_ASSERT (TYPE_1__*,int ) ;
 int mftb () ;
 int n_slbs ;

void
slb_insert_user(pmap_t pm, struct slb *slb)
{
 int i;

 PMAP_LOCK_ASSERT(pm, MA_OWNED);

 if (pm->pm_slb_len < n_slbs) {
  i = pm->pm_slb_len;
  pm->pm_slb_len++;
 } else {
  i = mftb() % n_slbs;
 }


 pm->pm_slb[i] = slb;
}
