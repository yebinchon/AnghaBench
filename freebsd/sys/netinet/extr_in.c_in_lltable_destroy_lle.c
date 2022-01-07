
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct llentry {int lle_epoch_ctx; } ;


 int LLE_WUNLOCK (struct llentry*) ;
 int epoch_call (int ,int *,int ) ;
 int in_lltable_destroy_lle_unlocked ;
 int net_epoch_preempt ;

__attribute__((used)) static void
in_lltable_destroy_lle(struct llentry *lle)
{

 LLE_WUNLOCK(lle);
 epoch_call(net_epoch_preempt, &lle->lle_epoch_ctx, in_lltable_destroy_lle_unlocked);
}
