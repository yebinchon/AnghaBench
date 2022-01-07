
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef void* u8 ;
typedef int u32 ;
struct TYPE_4__ {int type; } ;
struct TYPE_3__ {int match_criteria; void* match_criteria_enable; } ;
struct mlx5_flow_group {void* start_index; void* max_ftes; TYPE_2__ base; TYPE_1__ mask; int ftes; } ;


 int ENOMEM ;
 struct mlx5_flow_group* ERR_PTR (int ) ;
 int FS_TYPE_FLOW_GROUP ;
 int GFP_KERNEL ;
 int INIT_LIST_HEAD (int *) ;
 void* MLX5_ADDR_OF (int ,int *,int ) ;
 void* MLX5_GET (int ,int *,int ) ;
 int create_flow_group_in ;
 int end_flow_index ;
 struct mlx5_flow_group* kzalloc (int,int ) ;
 void* match_criteria ;
 void* match_criteria_enable ;
 int memcpy (int *,void*,int) ;
 int start_flow_index ;

__attribute__((used)) static struct mlx5_flow_group *fs_alloc_fg(u32 *create_fg_in)
{
 struct mlx5_flow_group *fg;
 void *match_criteria = MLX5_ADDR_OF(create_flow_group_in,
         create_fg_in, match_criteria);
 u8 match_criteria_enable = MLX5_GET(create_flow_group_in,
         create_fg_in,
         match_criteria_enable);
 fg = kzalloc(sizeof(*fg), GFP_KERNEL);
 if (!fg)
  return ERR_PTR(-ENOMEM);

 INIT_LIST_HEAD(&fg->ftes);
 fg->mask.match_criteria_enable = match_criteria_enable;
 memcpy(&fg->mask.match_criteria, match_criteria,
        sizeof(fg->mask.match_criteria));
 fg->base.type = FS_TYPE_FLOW_GROUP;
 fg->start_index = MLX5_GET(create_flow_group_in, create_fg_in,
       start_flow_index);
 fg->max_ftes = MLX5_GET(create_flow_group_in, create_fg_in,
    end_flow_index) - fg->start_index + 1;
 return fg;
}
