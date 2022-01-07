
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int u32 ;
struct mlx5_flow_table {int dummy; } ;
struct TYPE_5__ {int list; TYPE_3__* parent; } ;
struct TYPE_4__ {int type; } ;
struct mlx5_flow_rule {TYPE_2__ base; TYPE_1__ dest_attr; } ;
struct mlx5_flow_group {scalar_t__ num_ftes; scalar_t__ max_ftes; int ftes; int base; } ;
struct TYPE_6__ {int list; int * parent; } ;
struct fs_fte {int dests_size; TYPE_3__ base; int dests; } ;


 int ENOMEM ;
 int ENOSPC ;
 struct fs_fte* ERR_PTR (int) ;
 int GFP_KERNEL ;
 scalar_t__ IS_ERR (struct fs_fte*) ;
 int MLX5_FLOW_CONTEXT_ACTION_FWD_DEST ;
 int MLX5_FLOW_CONTEXT_DEST_TYPE_FLOW_TABLE ;
 int MLX5_FS_DEFAULT_FLOW_TAG ;
 struct fs_fte* fs_alloc_fte (int ,int ,int *,unsigned int) ;
 int kfree (struct fs_fte*) ;
 struct mlx5_flow_rule* kzalloc (int,int ) ;
 int list_add (int *,int *) ;
 int list_add_tail (int *,int *) ;

__attribute__((used)) static struct fs_fte *alloc_star_ft_entry(struct mlx5_flow_table *ft,
       struct mlx5_flow_group *fg,
       u32 *match_value,
       unsigned int index)
{
 int err;
 struct fs_fte *fte;
 struct mlx5_flow_rule *dst;

 if (fg->num_ftes == fg->max_ftes)
  return ERR_PTR(-ENOSPC);

 fte = fs_alloc_fte(MLX5_FLOW_CONTEXT_ACTION_FWD_DEST,
      MLX5_FS_DEFAULT_FLOW_TAG, match_value, index);
 if (IS_ERR(fte))
  return fte;


 dst = kzalloc(sizeof(*dst), GFP_KERNEL);
 if (!dst) {
  err = -ENOMEM;
  goto free_fte;
 }

 fte->base.parent = &fg->base;
 fte->dests_size = 1;
 dst->dest_attr.type = MLX5_FLOW_CONTEXT_DEST_TYPE_FLOW_TABLE;
 dst->base.parent = &fte->base;
 list_add(&dst->base.list, &fte->dests);

 list_add_tail(&fte->base.list, &fg->ftes);
 fg->num_ftes++;

 return fte;

free_fte:
 kfree(fte);
 return ERR_PTR(err);
}
