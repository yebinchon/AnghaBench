
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int name; } ;
struct mlx5_flow_table {TYPE_1__ base; int id; int type; int vport; } ;
struct mlx5_core_dev {int dummy; } ;
struct fs_prio {int num_ft; } ;


 struct mlx5_core_dev* fs_get_dev (TYPE_1__*) ;
 int fs_get_parent (struct fs_prio*,struct mlx5_flow_table*) ;
 int mlx5_cmd_fs_destroy_ft (struct mlx5_core_dev*,int ,int ,int ) ;
 int mlx5_core_warn (struct mlx5_core_dev*,char*,int ) ;

__attribute__((used)) static void _fs_del_ft(struct mlx5_flow_table *ft)
{
 int err;
 struct mlx5_core_dev *dev = fs_get_dev(&ft->base);
 struct fs_prio *prio;

 err = mlx5_cmd_fs_destroy_ft(dev, ft->vport, ft->type, ft->id);
 if (err)
  mlx5_core_warn(dev, "flow steering can't destroy ft %s\n",
          ft->base.name);

 fs_get_parent(prio, ft);
 prio->num_ft--;
}
