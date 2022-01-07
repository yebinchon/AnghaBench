
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct table_info {scalar_t__ xstate; scalar_t__ state; } ;
struct radix_node_head {int rh; int (* rnh_walktree ) (int *,int ,struct radix_node_head*) ;} ;
struct radix_cfg {int dummy; } ;


 int M_IPFW ;
 int flush_radix_entry ;
 int free (struct radix_cfg*,int ) ;
 int rn_detachhead (scalar_t__*) ;
 int stub1 (int *,int ,struct radix_node_head*) ;
 int stub2 (int *,int ,struct radix_node_head*) ;

__attribute__((used)) static void
ta_destroy_radix(void *ta_state, struct table_info *ti)
{
 struct radix_cfg *cfg;
 struct radix_node_head *rnh;

 cfg = (struct radix_cfg *)ta_state;

 rnh = (struct radix_node_head *)(ti->state);
 rnh->rnh_walktree(&rnh->rh, flush_radix_entry, rnh);
 rn_detachhead(&ti->state);

 rnh = (struct radix_node_head *)(ti->xstate);
 rnh->rnh_walktree(&rnh->rh, flush_radix_entry, rnh);
 rn_detachhead(&ti->xstate);

 free(cfg, M_IPFW);
}
