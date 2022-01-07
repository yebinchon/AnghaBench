
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int num_types; scalar_t__ active; } ;
struct mlx5_flow_table {int id; int type; int vport; TYPE_1__ autogroup; int base; } ;
struct mlx5_flow_group {int id; } ;
struct mlx5_core_dev {int dummy; } ;


 int WARN_ON (int) ;
 struct mlx5_core_dev* fs_get_dev (int *) ;
 int fs_get_parent (struct mlx5_flow_table*,struct mlx5_flow_group*) ;
 scalar_t__ mlx5_cmd_fs_destroy_fg (struct mlx5_core_dev*,int ,int ,int ,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*) ;

__attribute__((used)) static void fs_del_fg(struct mlx5_flow_group *fg)
{
 struct mlx5_flow_table *parent_ft;
 struct mlx5_core_dev *dev;

 fs_get_parent(parent_ft, fg);
 dev = fs_get_dev(&parent_ft->base);
 WARN_ON(!dev);

 if (parent_ft->autogroup.active)
  parent_ft->autogroup.num_types--;

 if (mlx5_cmd_fs_destroy_fg(dev, parent_ft->vport,
       parent_ft->type,
       parent_ft->id, fg->id))
  mlx5_core_warn(dev, "flow steering can't destroy fg\n");
}
