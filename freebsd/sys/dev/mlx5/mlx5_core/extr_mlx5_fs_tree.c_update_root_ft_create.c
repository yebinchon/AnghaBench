
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mlx5_flow_table {int level; int id; int type; } ;
struct mlx5_flow_root_namespace {struct mlx5_flow_table* root_ft; int dev; } ;


 int INT_MAX ;
 int mlx5_cmd_update_root_ft (int ,int ,int ) ;
 int mlx5_core_warn (int ,char*,int ) ;

__attribute__((used)) static int update_root_ft_create(struct mlx5_flow_root_namespace *root,
        struct mlx5_flow_table *ft)
{
 int err = 0;
 int min_level = INT_MAX;

 if (root->root_ft)
  min_level = root->root_ft->level;

 if (ft->level < min_level)
  err = mlx5_cmd_update_root_ft(root->dev, ft->type,
           ft->id);
 else
  return err;

 if (err)
  mlx5_core_warn(root->dev, "Update root flow table of id=%u failed\n",
          ft->id);
 else
  root->root_ft = ft;

 return err;
}
