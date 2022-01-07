
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct mlx5_flow_table {int num_ftes; TYPE_1__ base; int index; int id; int type; int status; int vport; } ;
struct mlx5_flow_group {int num_ftes; TYPE_1__ base; int index; int id; int type; int status; int vport; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_fte {int num_ftes; TYPE_1__ base; int index; int id; int type; int status; int vport; } ;


 int WARN_ON (int) ;
 struct mlx5_core_dev* fs_get_dev (TYPE_1__*) ;
 int fs_get_parent (struct mlx5_flow_table*,struct mlx5_flow_table*) ;
 int mlx5_cmd_fs_delete_fte (struct mlx5_core_dev*,int ,int *,int ,int ,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ) ;

__attribute__((used)) static void fs_del_fte(struct fs_fte *fte)
{
 struct mlx5_flow_table *ft;
 struct mlx5_flow_group *fg;
 int err;
 struct mlx5_core_dev *dev;

 fs_get_parent(fg, fte);
 fs_get_parent(ft, fg);

 dev = fs_get_dev(&ft->base);
 WARN_ON(!dev);

 err = mlx5_cmd_fs_delete_fte(dev, ft->vport, &fte->status,
         ft->type, ft->id, fte->index);
 if (err)
  mlx5_core_warn(dev, "flow steering can't delete fte %s\n",
          fte->base.name);

 fg->num_ftes--;
}
