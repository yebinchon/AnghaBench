
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int list; } ;
struct mlx5_flow_table {TYPE_1__ base; int id; int type; } ;
struct mlx5_flow_root_namespace {struct mlx5_flow_table* root_ft; int dev; } ;
struct fs_prio {int objs; } ;
struct TYPE_4__ {int list; } ;


 TYPE_2__ base ;
 struct mlx5_flow_table* find_next_ft (struct fs_prio*) ;
 int fs_get_parent (struct fs_prio*,struct mlx5_flow_table*) ;
 int fs_put (TYPE_1__*) ;
 int list_is_last (int *,int *) ;
 struct mlx5_flow_table* list_next_entry (struct mlx5_flow_table*,int ) ;
 int mlx5_cmd_update_root_ft (int ,int ,int ) ;
 int mlx5_core_warn (int ,char*,int ) ;

__attribute__((used)) static int update_root_ft_destroy(struct mlx5_flow_root_namespace *root,
        struct mlx5_flow_table *ft)
{
 int err = 0;
 struct fs_prio *prio;
 struct mlx5_flow_table *next_ft = ((void*)0);
 struct mlx5_flow_table *put_ft = ((void*)0);

 if (root->root_ft != ft)
  return 0;

 fs_get_parent(prio, ft);



 if (!list_is_last(&ft->base.list, &prio->objs)) {
  next_ft = list_next_entry(ft, base.list);
 } else {
  next_ft = find_next_ft(prio);
  put_ft = next_ft;
 }

 if (next_ft) {
  err = mlx5_cmd_update_root_ft(root->dev, next_ft->type,
           next_ft->id);
  if (err)
   mlx5_core_warn(root->dev, "Update root flow table of id=%u failed\n",
           ft->id);
 }
 if (!err)
  root->root_ft = next_ft;

 if (put_ft)
  fs_put(&put_ft->base);

 return err;
}
