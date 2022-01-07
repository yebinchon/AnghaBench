
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8 ;
typedef int u32 ;
struct mlx5_flow_table {int base; } ;
struct mlx5_flow_rule {int dummy; } ;
struct mlx5_flow_namespace {int dests_rw_sem; } ;
struct mlx5_flow_destination {int dummy; } ;


 int down_read (int *) ;
 struct mlx5_flow_rule* fs_add_dst_ft (struct mlx5_flow_table*,int ,int *,int *,int ,int ,struct mlx5_flow_destination*) ;
 struct mlx5_flow_namespace* get_ns_with_notifiers (int *) ;
 int up_read (int *) ;

struct mlx5_flow_rule *
mlx5_add_flow_rule(struct mlx5_flow_table *ft,
     u8 match_criteria_enable,
     u32 *match_criteria,
     u32 *match_value,
     u32 action,
     u32 flow_tag,
     struct mlx5_flow_destination *dest)
{
 struct mlx5_flow_rule *dst;
 struct mlx5_flow_namespace *ns;

 ns = get_ns_with_notifiers(&ft->base);
 if (ns)
  down_read(&ns->dests_rw_sem);
 dst = fs_add_dst_ft(ft, match_criteria_enable, match_criteria,
        match_value, action, flow_tag, dest);
 if (ns)
  up_read(&ns->dests_rw_sem);

 return dst;


}
