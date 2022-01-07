
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int lo_flags; } ;
struct lock {TYPE_1__ lock_object; } ;


 int KA_XLOCKED ;
 int LK_NOSHARE ;
 int lockmgr_assert (struct lock*,int ) ;

void
lockallowshare(struct lock *lk)
{

 lockmgr_assert(lk, KA_XLOCKED);
 lk->lock_object.lo_flags &= ~LK_NOSHARE;
}
