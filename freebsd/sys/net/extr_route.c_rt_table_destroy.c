
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int head; } ;
struct rib_head {TYPE_1__ rmhead; } ;


 int M_RTABLE ;
 int RIB_LOCK_DESTROY (struct rib_head*) ;
 int free (struct rib_head*,int ) ;
 int rn_walktree (int *,int ,int *) ;
 int rt_freeentry ;

void
rt_table_destroy(struct rib_head *rh)
{

 rn_walktree(&rh->rmhead.head, rt_freeentry, &rh->rmhead.head);


 RIB_LOCK_DESTROY(rh);
 free(rh, M_RTABLE);
}
