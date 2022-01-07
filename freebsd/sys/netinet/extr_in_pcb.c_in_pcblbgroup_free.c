
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct inpcblbgroup {int il_epoch_ctx; } ;


 int CK_LIST_REMOVE (struct inpcblbgroup*,int ) ;
 int epoch_call (int ,int *,int ) ;
 int il_list ;
 int in_pcblbgroup_free_deferred ;
 int net_epoch_preempt ;

__attribute__((used)) static void
in_pcblbgroup_free(struct inpcblbgroup *grp)
{

 CK_LIST_REMOVE(grp, il_list);
 epoch_call(net_epoch_preempt, &grp->il_epoch_ctx,
     in_pcblbgroup_free_deferred);
}
