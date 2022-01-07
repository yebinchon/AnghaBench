
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int walktree_f_t ;
typedef int ta_foreach_f ;
struct table_info {scalar_t__ xstate; scalar_t__ state; } ;
struct radix_node_head {int rh; int (* rnh_walktree ) (int *,int *,void*) ;} ;


 int stub1 (int *,int *,void*) ;
 int stub2 (int *,int *,void*) ;

__attribute__((used)) static void
ta_foreach_radix(void *ta_state, struct table_info *ti, ta_foreach_f *f,
    void *arg)
{
 struct radix_node_head *rnh;

 rnh = (struct radix_node_head *)(ti->state);
 rnh->rnh_walktree(&rnh->rh, (walktree_f_t *)f, arg);

 rnh = (struct radix_node_head *)(ti->xstate);
 rnh->rnh_walktree(&rnh->rh, (walktree_f_t *)f, arg);
}
